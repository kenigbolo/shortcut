# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160720145248) do

  create_table "bidders", force: :cascade do |t|
    t.integer  "bid_id"
    t.text     "name"
    t.text     "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bid_id"], name: "index_bidders_on_bid_id"
  end

  create_table "bids", force: :cascade do |t|
    t.integer  "cargo_id"
    t.text     "description"
    t.decimal  "price"
    t.text     "winner"
    t.date     "end_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["cargo_id"], name: "index_bids_on_cargo_id"
  end

  create_table "cargo_owners", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email_address"
    t.string   "phone_number"
    t.string   "country"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "cargos", force: :cascade do |t|
    t.integer  "cargo_owner_id"
    t.decimal  "weight"
    t.decimal  "volume"
    t.decimal  "density"
    t.string   "cargo_type"
    t.string   "present_port"
    t.string   "destination_port"
    t.date     "arrival_date"
    t.string   "description"
    t.string   "status"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["cargo_owner_id"], name: "index_cargos_on_cargo_owner_id"
  end

  create_table "marketplaces", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ports", force: :cascade do |t|
    t.text     "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ship_owners", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email_address"
    t.string   "phone_number"
    t.string   "country"
    t.string   "company_name"
    t.string   "company_address"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "ships", force: :cascade do |t|
    t.integer  "ship_owner_id"
    t.string   "present_port"
    t.string   "destination_port"
    t.decimal  "gross_tonne"
    t.decimal  "dead_weight"
    t.integer  "imo_number"
    t.string   "ship_type"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["ship_owner_id"], name: "index_ships_on_ship_owner_id"
  end

end
