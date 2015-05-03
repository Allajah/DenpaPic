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

ActiveRecord::Schema.define(version: 20150503024950) do

  create_table "denpas", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.string   "url",        limit: 255, null: false
    t.integer  "tweet_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "pictures", ["tweet_id"], name: "index_pictures_on_tweet_id", using: :btree

  create_table "tweets", force: :cascade do |t|
    t.string   "url",                limit: 255, null: false
    t.integer  "fav",                limit: 4,   null: false
    t.integer  "rt",                 limit: 4,   null: false
    t.integer  "status_id",          limit: 4,   null: false
    t.integer  "twitter_account_id", limit: 4,   null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "tweets", ["twitter_account_id"], name: "index_tweets_on_twitter_account_id", using: :btree

  create_table "twitter_accounts", force: :cascade do |t|
    t.integer  "denpa_id",    limit: 4,   null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "screen_name", limit: 255, null: false
    t.integer  "uid",         limit: 4,   null: false
  end

  add_index "twitter_accounts", ["denpa_id"], name: "index_twitter_accounts_on_denpa_id", using: :btree

  add_foreign_key "pictures", "tweets"
  add_foreign_key "tweets", "twitter_accounts"
end
