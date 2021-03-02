class CreateBalanceSheets < ActiveRecord::Migration[6.0]
  def change
    create_table :balance_sheets do |t|
      t.references :company,             null: false, fareign_key: :true
      t.integer    :fiscal_year,         null: false
      t.integer    :current_assets,      null: false
      t.integer    :fixed_assets,        null: false
      t.integer    :current_liabilities, null: false
      t.integer    :fixed_liabilities,   null: false
      t.integer    :capital_stock,       null: false
      t.timestamps
    end
  end
end
