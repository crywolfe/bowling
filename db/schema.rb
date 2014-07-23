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

ActiveRecord::Schema.define(version: 20140723182652) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "frames", force: true do |t|
    t.integer  "game_id"
    t.integer  "frame_number"
    t.integer  "ball1"
    t.integer  "ball2"
    t.integer  "total_points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", force: true do |t|
    t.string   "comment"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "frame_10c"
    t.string   "frame_1_score"
    t.string   "frame_2_score"
    t.string   "frame_3_score"
    t.string   "frame_4_score"
    t.string   "frame_5_score"
    t.string   "frame_6_score"
    t.string   "frame_7_score"
    t.string   "frame_8_score"
    t.string   "frame_9_score"
    t.string   "frame_10_score"
    t.integer  "scorecard",      array: true
    t.integer  "frame_number"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
