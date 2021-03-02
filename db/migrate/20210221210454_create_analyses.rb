class CreateAnalyses < ActiveRecord::Migration[6.0]
  def change
    create_table :analyses do |t|
      t.references :company,           null: false, fareign_key: :true
      t.integer    :fiscal_year,       null: false
      t.integer    :classification_id
      t.text       :information
      t.timestamps
    end
  end
end
