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

ActiveRecord::Schema.define(version: 2019_07_08_212054) do

  create_table "chirrps", force: :cascade do |t|
    t.string "chirp_text"
    t.integer "user_id"
    t.string "media"
    t.integer "parent_id"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rechirrps", force: :cascade do |t|
    t.integer "rechirper_id"
    t.integer "source_chirp_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "user_id"
    t.integer "friend_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "splats", force: :cascade do |t|
    t.integer "chirrp_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "squawks", force: :cascade do |t|
    t.integer "chirrp_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "location"
    t.string "avatar"
    t.string "cover"
    t.string "about"
    t.string "password_digest"
    t.integer "chirps_count"
    t.integer "followers_count"
    t.integer "following_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
