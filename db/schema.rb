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

ActiveRecord::Schema.define(version: 20161107071747) do

  create_table "basic_profiles", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "age"
    t.string   "sex"
    t.string   "father_name"
    t.string   "mother_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.integer  "basic_profile_id"
    t.string   "person"
    t.string   "street_name"
    t.string   "city_name"
    t.string   "country"
    t.integer  "pin"
    t.integer  "phone",            limit: 10
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "contacts", ["basic_profile_id"], name: "index_contacts_on_basic_profile_id"

  create_table "educations", force: :cascade do |t|
    t.integer  "basic_profile_id"
    t.string   "qualification"
    t.string   "institution"
    t.date     "start_year"
    t.date     "end_year"
    t.integer  "percentage"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "educations", ["basic_profile_id"], name: "index_educations_on_basic_profile_id"

  create_table "works", force: :cascade do |t|
    t.integer  "basic_profile_id"
    t.string   "company"
    t.string   "postion"
    t.date     "from_year"
    t.date     "to_year"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "works", ["basic_profile_id"], name: "index_works_on_basic_profile_id"

end
