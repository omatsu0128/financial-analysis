class CreateProfitAndLossStatements < ActiveRecord::Migration[6.0]
  def change
    create_table :profit_and_loss_statements do |t|
      t.references :company,                    null: false, fareign_key: :true
      t.integer    :fiscal_year,                null: false
      t.integer    :sales,                      null: false
      t.integer    :cost_of_goods_sold,         null: false
      t.integer    :gross_profit,               null: false
      t.integer    :selling_expenses,           null: false
      t.integer    :operating_income,           null: false
      t.integer    :non_operating_income,       null: false
      t.integer    :non_operating_expenses,     null: false
      t.integer    :ordinary_income,            null: false
      t.integer    :extraordinary_profits,      null: false
      t.integer    :extraordinary_loss,         null: false
      t.integer    :income_before_income_taxes, null: false
      t.integer    :profit,                     null: false
      t.timestamps
    end
  end
end
