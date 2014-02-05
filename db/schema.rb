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

ActiveRecord::Schema.define(version: 20140205055525) do

  create_table "exercises", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "video_file_name"
    t.string   "video_content_type"
    t.integer  "video_file_size"
    t.datetime "video_updated_at"
  end

  create_table "regiment_exercises", force: true do |t|
    t.integer  "regiment_id"
    t.integer  "exercise_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order"
    t.integer  "reps"
  end

  create_table "regiments", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.string   "email"
    t.integer  "age",                   limit: 1
    t.integer  "gender",                limit: 1
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "password"
    t.string   "password_confirmation"
    t.string   "password_digest"
  end

end
