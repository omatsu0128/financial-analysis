class Analysis < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :classification

  belongs_to :company
  has_many :balance_sheets
  has_many :profit_and_loss_statements

  validates :fiscal_year, presence: true, numericality:{ only_integer: true, allow_blank: true}, inclusion: { in: 1900..2100, allow_blank: true}
  validates :classification_id, presence: true, numericality: { only_integer: true, allow_blank: true}, inclusion: { in: 1..6, allow_blank: true}
  validates :information,length: { maximum: 500 }

end
