class ProfitAndLossStatement < ApplicationRecord
  belongs_to :company
  belongs_to :analysis, optional: true

  def total_capital
    balance = BalanceSheet.find_by(fiscal_year: fiscal_year)
    arr = []
    arr << balance.capital_stock
    arr << balance.current_liabilities
    arr << balance.fixed_liabilities
    return arr.sum
  end

  def balance
    balance = BalanceSheet.find_by(fiscal_year: fiscal_year)
  end
end