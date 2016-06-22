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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20160622062126) do
=======
ActiveRecord::Schema.define(version: 20160622140113) do
>>>>>>> 237223fbb3daa9e5a5c1d0a010418d972f09937f

  create_table "events", force: :cascade do |t|
    t.string   "event_name",        null: false
    t.date     "event_date",        null: false
    t.time     "event_time",        null: false
    t.string   "event_place",       null: false
    t.string   "event_contents",    null: false
    t.integer  "event_money",       null: false
    t.integer  "event_numofpeople", null: false
    t.date     "event_deadline",    null: false
    t.integer  "event_kanji_id",    null: false
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "user_events", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
