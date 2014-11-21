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

ActiveRecord::Schema.define(version: 20141117050507) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cached_passage_queries", force: true do |t|
    t.string   "query_string"
    t.integer  "passage_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "passages", force: true do |t|
    t.string   "heading"
    t.text     "html"
    t.string   "sha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "passages_people", id: false, force: true do |t|
    t.integer "passage_id", null: false
    t.integer "person_id",  null: false
  end

  add_index "passages_people", ["passage_id", "person_id"], name: "index_passages_people_on_passage_id_and_person_id", using: :btree
  add_index "passages_people", ["person_id", "passage_id"], name: "index_passages_people_on_person_id_and_passage_id", using: :btree

  create_table "people", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

end
