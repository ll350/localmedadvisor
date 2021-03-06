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

ActiveRecord::Schema.define(version: 20140617041204) do

  create_table "facilities", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facility_reviews", force: true do |t|
    t.string   "reviewer"
    t.string   "facility"
    t.string   "title"
    t.text     "description"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "facility_id"
    t.integer  "user_id"
  end

  add_index "facility_reviews", ["facility_id"], name: "index_facility_reviews_on_facility_id"
  add_index "facility_reviews", ["user_id"], name: "index_facility_reviews_on_user_id"

  create_table "medications", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "procedures", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "provider_reviews", force: true do |t|
    t.string   "reviewer"
    t.string   "provider"
    t.string   "title"
    t.text     "description"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "provider_id"
    t.integer  "user_id"
  end

  add_index "provider_reviews", ["provider_id"], name: "index_provider_reviews_on_provider_id"
  add_index "provider_reviews", ["user_id"], name: "index_provider_reviews_on_user_id"

  create_table "providers", force: true do |t|
    t.string   "name"
    t.string   "specialty"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "specialties", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "users_facilities", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "facility_id"
  end

  create_table "users_procedures", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "procedure_id"
  end

  create_table "users_providers", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "provider_id"
  end

end
