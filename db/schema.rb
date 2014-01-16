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

ActiveRecord::Schema.define(version: 0) do

  create_table "messages", force: true do |t|
    t.string   "message",   limit: 500,             null: false
    t.integer  "sent_by",                           null: false
    t.integer  "sent_to",                           null: false
    t.datetime "date_sent",                         null: false
    t.integer  "deleted",               default: 0, null: false
  end

  add_index "messages", ["sent_by"], name: "fk_messages_user_id_idx", using: :btree
  add_index "messages", ["sent_to"], name: "fk_messages_sent_to_idx", using: :btree

  create_table "users", force: true do |t|
    t.string   "user_name",      limit: 20,             null: false
    t.string   "password",       limit: 50,             null: false
    t.string   "first_name",     limit: 20,             null: false
    t.string   "last_name",      limit: 20,             null: false
    t.integer  "user_status",               default: 0, null: false
    t.integer  "disabled",                  default: 0, null: false
    t.datetime "created_date",                          null: false
    t.datetime "last_login",                            null: false
    t.integer  "login_attempts",            default: 0, null: false
  end

end
