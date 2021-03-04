# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_22_155726) do

  create_table "analyses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.integer "fiscal_year", null: false
    t.integer "classification_id", null: false
    t.text "information"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_analyses_on_company_id"
  end

  create_table "balance_sheets", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.integer "fiscal_year", null: false
    t.integer "current_assets", null: false
    t.integer "fixed_assets", null: false
    t.integer "current_liabilities", null: false
    t.integer "fixed_liabilities", null: false
    t.integer "capital_stock", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_balance_sheets_on_company_id"
  end

  create_table "companies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.integer "prefecture_id", null: false
    t.integer "industry_id", null: false
    t.integer "company_size_id", null: false
    t.text "information"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "profit_and_loss_statements", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.integer "fiscal_year", null: false
    t.integer "sales", null: false
    t.integer "cost_of_goods_sold", null: false
    t.integer "gross_profit", null: false
    t.integer "selling_expenses", null: false
    t.integer "operating_income", null: false
    t.integer "non_operating_income", null: false
    t.integer "non_operating_expenses", null: false
    t.integer "ordinary_income", null: false
    t.integer "extraordinary_profits", null: false
    t.integer "extraordinary_loss", null: false
    t.integer "income_before_income_taxes", null: false
    t.integer "profit", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_profit_and_loss_statements_on_company_id"
  end

end
