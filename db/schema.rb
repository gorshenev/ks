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

ActiveRecord::Schema.define(version: 20141117182011) do

  create_table "events", force: true do |t|
    t.string   "location"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "creator_id"
    t.text     "description"
    t.string   "title"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.boolean  "all_day"
  end

  add_index "events", ["all_day"], name: "index_events_on_all_day"
  add_index "events", ["creator_id"], name: "index_events_on_creator_id"
  add_index "events", ["ends_at"], name: "index_events_on_ends_at"
  add_index "events", ["starts_at"], name: "index_events_on_starts_at"

  create_table "fullcalendar_engine_event_series", force: true do |t|
    t.integer  "frequency",  default: 1
    t.string   "period",     default: "monthly"
    t.datetime "starttime"
    t.datetime "endtime"
    t.boolean  "all_day",    default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fullcalendar_engine_events", force: true do |t|
    t.string   "title"
    t.datetime "starttime"
    t.datetime "endtime"
    t.boolean  "all_day",         default: false
    t.text     "description"
    t.integer  "event_series_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fullcalendar_engine_events", ["event_series_id"], name: "index_fullcalendar_engine_events_on_event_series_id"

  create_table "invites", force: true do |t|
    t.integer  "attendee_id"
    t.integer  "attended_event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "invites", ["attended_event_id"], name: "index_invites_on_attended_event_id"
  add_index "invites", ["attendee_id", "attended_event_id"], name: "index_invites_on_attendee_id_and_attended_event_id", unique: true
  add_index "invites", ["attendee_id"], name: "index_invites_on_attendee_id"

  create_table "news", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "date"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
