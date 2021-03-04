class BalanceSheet < ApplicationRecord
  belongs_to :company
  belongs_to :analysis, optional: true

  validates :fiscal_year, presence: true, numericality:{ only_integer: true, allow_blank: true}, inclusion: { in: 1900..2100, allow_blank: true}
  validates :current_assets, presence: true, numericality:{ only_integer: true, greater_than_or_equal_to: 0, allow_blank: true}
  validates :fixed_assets, presence: true, numericality:{ only_integer: true, greater_than_or_equal_to: 0, allow_blank: true}
  validates :current_liabilities, presence: true, numericality:{ only_integer: true, greater_than_or_equal_to: 0, allow_blank: true}
  validates :fixed_liabilities, presence: true, numericality:{ only_integer: true, greater_than_or_equal_to: 0, allow_blank: true}
  validates :capital_stock, presence: true, numericality:{ only_integer: true, allow_blank: true}

end
