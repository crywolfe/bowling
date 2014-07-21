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

ActiveRecord::Schema.define(version: 20140720200441) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "frames", force: true do |t|
    t.integer  "game_id"
    t.integer  "frame_number"
    t.integer  "chance_one_points"
    t.integer  "chance_two_points"
    t.integer  "total_points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", force: true do |t|
    t.string   "scorecard",  array: true
    t.string   "comment"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "frame_1a"
    t.string   "frame_1b"
    t.string   "frame_2a"
    t.string   "frame_2b"
    t.string   "frame_3a"
    t.string   "frame_3b"
    t.string   "frame_4a"
    t.string   "frame_4b"
    t.string   "frame_5a"
    t.string   "frame_5b"
    t.string   "frame_6a"
    t.string   "frame_6b"
    t.string   "frame_7a"
    t.string   "frame_7b"
    t.string   "frame_8a"
    t.string   "frame_8b"
    t.string   "frame_9a"
    t.string   "frame_9b"
    t.string   "frame_10a"
    t.string   "frame_10b"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
