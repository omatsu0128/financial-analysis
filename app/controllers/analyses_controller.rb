class AnalysesController < ApplicationController
  def index
    @analyses = Analysis.all
  end

  def new
    @analysis = Analysis.new
  end

  def create
    @analysis = Analysis.new(analysis_params)
    if @analysis.save
      redirect_to root_path, notice: "査定対象に登録しました"
    else
      render :new
    end
  end

  def show
    @analysis = Analysis.find(params[:id])
    @profit_and_loss_statement = ProfitAndLossStatement.find_by(company_id: @analysis.company_id, fiscal_year: @analysis.fiscal_year)
    @profit_and_loss_statement_1 = ProfitAndLossStatement.find_by(company_id: @analysis.company_id, fiscal_year: @analysis.fiscal_year - 1)
    @arr = [@profit_and_loss_statement_1,@profit_and_loss_statement]
    @balance_sheet = BalanceSheet.find_by(company_id: @analysis.company_id, fiscal_year: @analysis.fiscal_year)
    @balance_sheet_1 = BalanceSheet.find_by(company_id: @analysis.company_id, fiscal_year: @analysis.fiscal_year - 1)
    @arr_bs = [@balance_sheet_1,@balance_sheet]
      if @profit_and_loss_statement.present? && @balance_sheet.present? && @profit_and_loss_statement_1.present? && @balance_sheet_1.present?
        @answer_1 = sprintf( "%.1f", @profit_and_loss_statement_1.ordinary_income / @profit_and_loss_statement_1.total_capital.to_f * 100).to_f
        @answer_2 = sprintf( "%.1f", @profit_and_loss_statement.ordinary_income / @profit_and_loss_statement.total_capital.to_f * 100).to_f
        @answer_3 = sprintf( "%.1f", (@profit_and_loss_statement.ordinary_income / @profit_and_loss_statement.total_capital.to_f * 100 - @profit_and_loss_statement_1.ordinary_income / @profit_and_loss_statement_1.total_capital.to_f * 100)).to_f
        @answer_4 = sprintf( "%.1f", @profit_and_loss_statement_1.operating_income / @profit_and_loss_statement_1.sales.to_f * 100).to_f
        @answer_5 = sprintf( "%.1f", @profit_and_loss_statement.ordinary_income / @profit_and_loss_statement.sales.to_f * 100).to_f
        @answer_6 = sprintf( "%.1f", (@profit_and_loss_statement.ordinary_income / @profit_and_loss_statement.sales.to_f * 100 - @profit_and_loss_statement_1.ordinary_income / @profit_and_loss_statement_1.sales.to_f * 100)).to_f
        @answer_7 = sprintf( "%.1f", @profit_and_loss_statement_1.sales / @profit_and_loss_statement_1.total_capital.to_f).to_f
        @answer_8 = sprintf( "%.1f", @profit_and_loss_statement.sales / @profit_and_loss_statement.total_capital.to_f).to_f
        @answer_9 = sprintf( "%.1f", @profit_and_loss_statement.sales / @profit_and_loss_statement.total_capital.to_f - @profit_and_loss_statement_1.sales / @profit_and_loss_statement_1.total_capital.to_f).to_f
        @answer_10 = sprintf( "%.1f",(@profit_and_loss_statement.sales - @profit_and_loss_statement_1.sales) / @profit_and_loss_statement_1.sales.to_f * 100).to_f
        @answer_11 = sprintf( "%.1f",(@profit_and_loss_statement.profit - @profit_and_loss_statement_1.profit) / @profit_and_loss_statement_1.profit.to_f * 100).to_f
      end
    @str = "前期と比べ#{@answer_10 * -1}％減少した。"
    # def word1
    #   if @answer_10 > 0
    #     puts "前期と比べ#{@answer_10}％増加した。"
    #   elsif @answer_10 < 0
    #     puts "前期と比べ#{@answer_10 * -1}％減少した。"
    #   else
    #     puts "前期と同様である。"
    #   end
    # end
  end

  def edit
    @analysis = Analysis.find(params[:id])
  end

  def update
    @analysis = Analysis.find(params[:id])
    if @analysis.update(analysis_params)
      redirect_to analysis_path(@analysis)
    else
      render :edit
    end
  end

  def destroy
    analysis = Analysis.find(params[:id])
    analysis.destroy
  end
  
  private

  def analysis_params
    params.require(:analysis).permit(:company_id, :fiscal_year, :classification_id, :information)
  end

end
