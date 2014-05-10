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

ActiveRecord::Schema.define(version: 20140510045434) do

  create_table "case_of_emergency_infos", force: true do |t|
    t.string   "name"
    t.string   "relationship"
    t.string   "contact_no"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "other_infos", force: true do |t|
    t.string   "spouse_name"
    t.string   "spouse_contact_number"
    t.string   "fathername"
    t.string   "mothername"
    t.string   "father_contact_number"
    t.string   "mother_contact_number"
    t.string   "parents_address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "personal_infos", force: true do |t|
    t.date     "date_of_birth"
    t.string   "place_of_birth"
    t.string   "civil_status"
    t.string   "height"
    t.string   "weight"
    t.string   "gender"
    t.string   "nationality"
    t.string   "religion"
    t.string   "address"
    t.string   "contact_number"
    t.date     "date_started_in_karate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "users", force: true do |t|
    t.string   "email",                     default: "",    null: false
    t.string   "encrypted_password",        default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",             default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                     default: false
    t.string   "firstname"
    t.string   "lastname"
    t.string   "middlename"
    t.string   "facebook_account"
    t.integer  "personal_info_id"
    t.integer  "other_info_id"
    t.integer  "case_of_emergency_info_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
