class Analysis < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :classification

  belongs_to :company
  has_many :balance_sheets
  has_many :profit_and_loss_statements
end
