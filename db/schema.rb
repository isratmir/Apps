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

ActiveRecord::Schema.define(version: 20160429200409) do

  create_table "app_types", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "apps", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.string   "url",         limit: 255
    t.text     "description", limit: 65535
    t.integer  "app_type_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "apps", ["app_type_id"], name: "index_apps_on_app_type_id", using: :btree

  create_table "comments", force: :cascade do |t|
    t.text     "comment",    limit: 65535
    t.integer  "app_id",     limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "comments", ["app_id"], name: "index_comments_on_app_id", using: :btree

  add_foreign_key "apps", "app_types"
  add_foreign_key "comments", "apps"
end
