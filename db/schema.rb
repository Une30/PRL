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

ActiveRecord::Schema.define(version: 20140722184614) do

  create_table "abstract_files", force: true do |t|
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pdf_file_name"
    t.string   "pdf_content_type"
    t.integer  "pdf_file_size"
    t.datetime "pdf_updated_at"
  end

  create_table "activities", force: true do |t|
    t.integer  "profile_id"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "albums", force: true do |t|
    t.text     "caption"
    t.date     "year"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "pictures", force: true do |t|
    t.boolean  "inslide"
    t.integer  "album_id"
    t.text     "caption"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "profiles", force: true do |t|
    t.string   "username"
    t.string   "current_position"
    t.string   "email2"
    t.string   "website"
    t.string   "linked_in"
    t.string   "research_gate"
    t.string   "google_scholar"
    t.boolean  "is_director"
    t.boolean  "is_assistant"
    t.boolean  "is_phd"
    t.boolean  "is_msc"
    t.boolean  "is_bsc"
    t.boolean  "is_intern"
    t.string   "phD_education"
    t.string   "MSc_education"
    t.string   "BSc_education"
    t.boolean  "phD_alumnus"
    t.boolean  "MSc_alumnus"
    t.boolean  "BSc_alumnus"
    t.boolean  "guest_alumnus"
    t.string   "phD_thesis"
    t.string   "phD_thesis_desc"
    t.string   "MSc_thesis"
    t.string   "MSc_thesis_desc"
    t.string   "BSc_thesis"
    t.string   "BSc_thesis_desc"
    t.string   "phD_entrance_year"
    t.string   "phD_graduation_year"
    t.string   "MSc_entrance_year"
    t.string   "MSc_graduation_year"
    t.string   "BSc_entrance_year"
    t.string   "BSc_graduation_year"
    t.string   "guest_entrance_year"
    t.string   "guest_graduation_year"
    t.string   "intern_title"
    t.string   "intern_desc"
    t.boolean  "isAdmin"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "research_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "publications", force: true do |t|
    t.string   "author"
    t.string   "title"
    t.string   "journal"
    t.string   "other"
    t.string   "year"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "publishers", force: true do |t|
    t.integer  "profile_id"
    t.integer  "publication_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "researches", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
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
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
