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

ActiveRecord::Schema.define(version: 20150617170917) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "basics", force: :cascade do |t|
    t.string   "yname"
    t.text     "ycity"
    t.string   "yphone"
    t.string   "yemail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "cphone"
    t.string   "cname"
    t.text     "ccity"
    t.string   "cemail"
  end

  create_table "inquiries", force: :cascade do |t|
    t.string   "date"
    t.string   "poc_first_name"
    t.string   "poc_last_name"
    t.string   "ytitle"
    t.string   "position_type"
    t.string   "industry_type"
    t.text     "specialty"
    t.string   "hard_skills"
    t.string   "relevant_skills"
    t.text     "culture"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "open_applies", force: :cascade do |t|
    t.string   "date"
    t.string   "poc_first_name"
    t.string   "poc_last_name"
    t.string   "ytitle"
    t.string   "desired_position"
    t.string   "industry_type"
    t.string   "position_found"
    t.string   "open_position"
    t.text     "position_info"
    t.text     "relevant_skills"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "referrals", force: :cascade do |t|
    t.string   "date"
    t.string   "poc_first_name"
    t.string   "poc_last_name"
    t.string   "poc_title"
    t.string   "reference"
    t.text     "position_info"
    t.text     "skills"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
