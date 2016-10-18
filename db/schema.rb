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

ActiveRecord::Schema.define(version: 20161018094354) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "electorates", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "member_of_parliaments", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "electorate_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "member_of_parliaments", ["electorate_id"], name: "index_member_of_parliaments_on_electorate_id", using: :btree

  create_table "post_code_electorate_maps", force: :cascade do |t|
    t.integer  "electorate_id"
    t.integer  "post_code_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "post_code_electorate_maps", ["electorate_id"], name: "index_post_code_electorate_maps_on_electorate_id", using: :btree
  add_index "post_code_electorate_maps", ["post_code_id"], name: "index_post_code_electorate_maps_on_post_code_id", using: :btree

  create_table "post_codes", force: :cascade do |t|
    t.integer  "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "member_of_parliaments", "electorates"
  add_foreign_key "post_code_electorate_maps", "electorates"
  add_foreign_key "post_code_electorate_maps", "post_codes"
end
