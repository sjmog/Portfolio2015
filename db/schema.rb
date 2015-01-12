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

ActiveRecord::Schema.define(version: 20150112131914) do

  create_table "article_categories", force: :cascade do |t|
    t.string   "title",      default: "Untitled Category"
    t.string   "icon",       default: "icon-lab"
    t.string   "image",      default: "http://placehold.it/300x300"
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  create_table "articles", force: :cascade do |t|
    t.string   "title",               default: "Untitled Article"
    t.datetime "date",                default: '2015-01-01 00:00:00'
    t.text     "body",                default: "Insert body text here"
    t.datetime "created_at",                                                    null: false
    t.datetime "updated_at",                                                    null: false
    t.integer  "article_category_id"
    t.string   "featured_image",      default: "http://placehold.it/300x300"
    t.string   "short_description",   default: "Insert short description here"
  end

  add_index "articles", ["article_category_id"], name: "index_articles_on_article_category_id"

  create_table "projects", force: :cascade do |t|
    t.string   "title",      default: "My Project"
    t.datetime "date",       default: '2015-01-01 00:00:00'
    t.text     "body",       default: "Insert body text here"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

end
