# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150718205804) do

  create_table "charities", force: true do |t|
    t.integer  "catID"
    t.string   "name"
    t.string   "info"
    t.string   "description"
    t.decimal  "amntraised"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "logo"
    t.string   "location"
  end

  create_table "charity_transacts", force: true do |t|
    t.decimal  "amount"
    t.integer  "cID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "macrocategories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subcategories", force: true do |t|
    t.integer  "macro"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transparency_reports", force: true do |t|
    t.integer  "charityID"
    t.integer  "userID"
    t.string   "report"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_transacts", force: true do |t|
    t.integer  "uID"
    t.decimal  "amount"
    t.integer  "cID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "userprefs", force: true do |t|
    t.integer  "cID"
    t.integer  "uID"
    t.integer  "percent"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "creditchoice"
  end

  create_table "users", force: true do |t|
    t.string   "crypted_password",          limit: 40
    t.string   "salt",                      limit: 40
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "name"
    t.string   "email_address"
    t.boolean  "administrator",                        default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state",                                default: "active"
    t.datetime "key_timestamp"
  end

  add_index "users", ["state"], name: "index_users_on_state"

end
