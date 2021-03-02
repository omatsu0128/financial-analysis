class BalanceSheet < ApplicationRecord
  belongs_to :company
  belongs_to :analysis, optional: true

end
