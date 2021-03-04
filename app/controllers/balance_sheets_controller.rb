class BalanceSheetsController < ApplicationController
  def new
    @balance_sheet = BalanceSheet.new
  end

  def create
    @balance_sheet = BalanceSheet.new(balance_sheet_params)
    if @balance_sheet.save
      redirect_to root_path, notice: "B/Sを作成しました"
    else
      render :new
    end
  end

  def show
    @balance_sheet = BalanceSheet.find(params[:id])
    @balance_sheet_1 = BalanceSheet.find_by(company_id: @balance_sheet.company_id, fiscal_year: @balance_sheet.fiscal_year - 1)
    @arr = [@balance_sheet_1,@balance_sheet]
  end

  def edit
    @balance_sheet = BalanceSheet.find(params[:id])
  end

  def update
    @balance_sheet = BalanceSheet.find(params[:id])
    if @balance_sheet.update(balance_sheet_params)
      redirect_to balance_sheet_path(@balance_sheet)
    else
      render :edit
    end
  end

  def destroy
    balance_sheet = BalanceSheet.find(params[:id])
    balance_sheet.destroy
  end

  private

  def balance_sheet_params
    params.require(:balance_sheet).permit(:company_id, :fiscal_year, :current_assets, :fixed_assets, :current_liabilities, :fixed_liabilities, :capital_stock)
  end

end
