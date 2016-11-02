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

ActiveRecord::Schema.define(version: 20161102112331) do

  create_table "blogposts", force: :cascade do |t|
    t.text     "newpost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "title"
  end

  create_table "casein_admin_users", force: :cascade do |t|
    t.string   "login",                           null: false
    t.string   "name"
    t.string   "email"
    t.integer  "access_level",        default: 0, null: false
    t.string   "crypted_password",                null: false
    t.string   "password_salt",                   null: false
    t.string   "persistence_token"
    t.string   "single_access_token"
    t.string   "perishable_token"
    t.integer  "login_count",         default: 0, null: false
    t.integer  "failed_login_count",  default: 0, null: false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.string   "time_zone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "url"
  end

  create_table "releases", force: :cascade do |t|
    t.string   "name"
    t.string   "cover"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string   "name"
    t.text     "lyrics"
    t.string   "spotify"
    t.string   "itunes"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "release_id"
    t.text     "downloadable"
  end

  add_index "songs", ["release_id"], name: "index_songs_on_release_id"

  create_table "tourdates", force: :cascade do |t|
    t.string   "venue"
    t.float    "lat"
    t.float    "long"
    t.string   "otherbands"
    t.text     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
