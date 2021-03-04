class Company < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :industry
  belongs_to_active_hash :company_size

  has_many :analyses,                    dependent: :destroy
  has_many :balance_sheets,              dependent: :destroy
  has_many :profit_and_loss_statements,  dependent: :destroy

  validates :name, presence: true
  validates :prefecture_id, presence: true, numericality: { only_integer: true, allow_blank: true}, inclusion: { in: 1..47, allow_blank: true}
  validates :industry_id, presence: true, numericality: { only_integer: true, allow_blank: true}, inclusion: { in: 1..20, allow_blank: true}
  validates :company_size_id, presence: true, numericality:{ only_integer: true, allow_blank: true}, inclusion: { in: 1..4, allow_blank: true}
  validates :information,length: { maximum: 500 }

end
