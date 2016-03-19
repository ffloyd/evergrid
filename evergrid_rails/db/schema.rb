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

ActiveRecord::Schema.define(version: 20160318203201) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "datacenters", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "datacenters", ["user_id"], name: "index_datacenters_on_user_id", using: :btree

  create_table "datasets", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "datasets", ["user_id"], name: "index_datasets_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "github_uid"
    t.string   "email"
    t.string   "nickname"
    t.string   "name"
    t.string   "github_token"
    t.json     "auth_json",    default: {}
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_foreign_key "datacenters", "users"
  add_foreign_key "datasets", "users"
end
