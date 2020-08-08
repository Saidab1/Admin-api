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

ActiveRecord::Schema.define(version: 2020_08_07_180121) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.date "date_birth"
    t.string "address"
    t.string "type_doc_id"
    t.integer "doc_id_number"
    t.string "job_position"
    t.string "job_area"
    t.date "hiring_date"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "expenses", force: :cascade do |t|
    t.string "category"
    t.float "total_amount"
    t.date "date"
    t.string "company_name"
    t.string "description"
    t.integer "ruc_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "incomes", force: :cascade do |t|
    t.integer "invoice_number"
    t.integer "ruc_number"
    t.float "total_amount"
    t.string "company_name"
    t.string "description"
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "petty_cash_expenses", force: :cascade do |t|
    t.integer "invoice_number"
    t.float "total_amount"
    t.date "expense_date"
    t.string "description"
    t.string "paid_to"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
