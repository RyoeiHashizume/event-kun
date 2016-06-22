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

ActiveRecord::Schema.define(version: 20160622140113) do

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

end
