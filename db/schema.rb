# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_09_24_150524) do
  create_table "branches", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "store_id"
    t.integer "user_id"
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedbacks", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "user_id"
    t.integer "reply_parent_id"
    t.string "content"
    t.string "status"
    t.string "reply_content"
    t.timestamp "replies_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "branch_id"
    t.string "name"
    t.integer "quantity"
    t.decimal "unit_price", precision: 10
    t.integer "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "branch_id"
    t.string "full_name"
    t.string "email"
    t.string "phone"
    t.string "shift"
    t.decimal "salary", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "bill_id"
    t.string "name"
    t.integer "quantity"
    t.string "unitprice"
    t.integer "unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "store_id"
    t.integer "user_id"
    t.decimal "amount", precision: 10
    t.string "payment_method"
    t.timestamp "expire_day"
    t.integer "payment_package"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tables", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "branch_id"
    t.string "name"
    t.string "type"
    t.decimal "price_per_hour", precision: 10
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "fullname"
    t.string "email"
    t.string "phone"
    t.string "password"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
