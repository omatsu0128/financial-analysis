class ProfitAndLossStatement < ApplicationRecord
  belongs_to :company
  belongs_to :analysis, optional: true

  validates :fiscal_year, presence: true, numericality:{ only_integer: true, allow_blank: true}, inclusion: { in: 1900..2100, allow_blank: true}
  validates :sales, presence: true, numericality:{ only_integer: true, greater_than_or_equal_to: 0, allow_blank: true}
  validates :cost_of_goods_sold, presence: true, numericality:{ only_integer: true, greater_than_or_equal_to: 0, allow_blank: true}
  validates :gross_profit, presence: true, numericality:{ only_integer: true, allow_blank: true}
  validates :selling_expenses, presence: true, numericality:{ only_integer: true, greater_than_or_equal_to: 0, allow_blank: true}
  validates :operating_income, presence: true, numericality:{ only_integer: true, allow_blank: true}
  validates :non_operating_income, presence: true, numericality:{ only_integer: true, greater_than_or_equal_to: 0, allow_blank: true}
  validates :non_operating_expenses, presence: true, numericality:{ only_integer: true, greater_than_or_equal_to: 0, allow_blank: true}
  validates :ordinary_income, presence: true, numericality:{ only_integer: true, allow_blank: true}
  validates :extraordinary_profits, presence: true, numericality:{ only_integer: true, greater_than_or_equal_to: 0, allow_blank: true}
  validates :extraordinary_loss, presence: true, numericality:{ only_integer: true, greater_than_or_equal_to: 0, allow_blank: true}
  validates :income_before_income_taxes, presence: true, numericality:{ only_integer: true, allow_blank: true}
  validates :profit, presence: true, numericality:{ only_integer: true, allow_blank: true}


  def total_capital
    balance = BalanceSheet.find_by(fiscal_year: fiscal_year, company_id: company_id)
    arr = []
    arr << balance.capital_stock
    arr << balance.current_liabilities
    arr << balance.fixed_liabilities
    return arr.sum
  end

  def balance
    balance = BalanceSheet.find_by(fiscal_year: fiscal_year, company_id: company_id)
  end
end