class ProfitAndLossStatementsController < ApplicationController
  def new
    @profit_and_loss_statement = ProfitAndLossStatement.new
  end

  def create
    @profit_and_loss_statement = ProfitAndLossStatement.new(profit_and_loss_statement_params)
    if @profit_and_loss_statement.save
      redirect_to root_path, notice: "P/Lを作成しました"
    else
      render :new
    end
  end

  def show
    @profit_and_loss_statement = ProfitAndLossStatement.find(params[:id])
    @profit_and_loss_statement_1 = ProfitAndLossStatement.find_by(company_id: @profit_and_loss_statement.company_id, fiscal_year: @profit_and_loss_statement.fiscal_year - 1)
    @arr = [@profit_and_loss_statement_1,@profit_and_loss_statement]
  end

  def edit
    @profit_and_loss_statement = ProfitAndLossStatement.find(params[:id])
  end

  def update
    @profit_and_loss_statement = ProfitAndLossStatement.find(params[:id])
    if @profit_and_loss_statement.update(profit_and_loss_statement_params)
      redirect_to profit_and_loss_statement_path(@profit_and_loss_statement)
    else
      redirect_to edit_balance_sheet_path(@profit_and_loss_statement.id)
    end
  end

  def destroy
    profit_and_loss_statement = ProfitAndLossStatement.find(params[:id])
    profit_and_loss_statement.destroy
  end
  
  private

  def profit_and_loss_statement_params
    params.require(:profit_and_loss_statement).permit(:company_id, :fiscal_year, :sales, :cost_of_goods_sold, :gross_profit, :selling_expenses, :operating_income, :non_operating_income, :non_operating_expenses, :ordinary_income, :extraordinary_profits, :extraordinary_loss, :income_before_income_taxes, :profit)
  end

end
