class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string     :name,             null: false
      t.integer    :prefecture_id,    null: false
      t.integer    :industry_id,      null: false
      t.integer    :company_size_id,  null: false
      t.text       :information
      t.timestamps
    end
  end
end
