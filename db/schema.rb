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

ActiveRecord::Schema.define(version: 20180917172603) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.bigint "vote_id"
    t.string "title"
    t.string "description"
    t.string "url"
    t.string "image_url"
    t.string "source"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vote_id"], name: "index_articles_on_vote_id"
  end

  create_table "tweeted_articles", force: :cascade do |t|
    t.string "twitter_uid"
    t.bigint "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_tweeted_articles_on_article_id"
  end

  create_table "votes", force: :cascade do |t|
    t.string "number"
    t.string "question"
    t.string "description"
    t.integer "type_of"
    t.string "result"
    t.integer "democrat_yes"
    t.integer "democrat_no"
    t.integer "democrat_not_voting"
    t.integer "republican_yes"
    t.integer "republican_no"
    t.integer "republican_not_voting"
    t.integer "independent_yes"
    t.integer "independent_no"
    t.integer "independent_not_voting"
    t.integer "total_yes"
    t.integer "total_no"
    t.integer "total_not_voting"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "articles", "votes"
  add_foreign_key "tweeted_articles", "articles"
end
