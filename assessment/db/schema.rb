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

ActiveRecord::Schema.define(version: 20180120011418) do

  create_table "albums", force: :cascade do |t|
    t.string   "name"
    t.text     "review"
    t.date     "release_date"
    t.integer  "artist_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "albums_genres", id: false, force: :cascade do |t|
    t.integer "album_id", null: false
    t.integer "genre_id", null: false
  end

  add_index "albums_genres", ["album_id", "genre_id"], name: "index_albums_genres_on_album_id_and_genre_id"
  add_index "albums_genres", ["genre_id", "album_id"], name: "index_albums_genres_on_genre_id_and_album_id"

  create_table "artists", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artists_genres", id: false, force: :cascade do |t|
    t.integer "artist_id", null: false
    t.integer "genre_id",  null: false
  end

  add_index "artists_genres", ["artist_id", "genre_id"], name: "index_artists_genres_on_artist_id_and_genre_id"
  add_index "artists_genres", ["genre_id", "artist_id"], name: "index_artists_genres_on_genre_id_and_artist_id"

  create_table "genres", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
