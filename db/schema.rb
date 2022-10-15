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

ActiveRecord::Schema[7.0].define(version: 2022_10_15_071010) do
  create_table "articles", force: :cascade do |t|
    t.string "author", null: false
    t.string "title", null: false
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "newsbites", force: :cascade do |t|
    t.string "title", null: false
    t.text "content", null: false
    t.datetime "published_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["title"], name: "index_newsbites_on_title", unique: true
  end

  create_table "products", force: :cascade do |t|
    t.string "name", null: false
    t.string "sku"
    t.decimal "price"
    t.string "uuid", default: "ed849b33-2880-4b62-8a35-7e8cfb4998dc", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_products_on_name", unique: true
    t.index ["uuid"], name: "index_products_on_uuid", unique: true
  end

  create_table "samples", force: :cascade do |t|
    t.string "name", null: false
    t.string "title", null: false
    t.decimal "price", default: "0.0", null: false
    t.integer "quantity", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_samples_on_name", unique: true
  end

end
