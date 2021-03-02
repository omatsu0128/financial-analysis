class Company < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :industry
  belongs_to_active_hash :company_size

  has_many :analyses,                    dependent: :destroy
  has_many :balance_sheets,              dependent: :destroy
  has_many :profit_and_loss_statements,  dependent: :destroy
end
