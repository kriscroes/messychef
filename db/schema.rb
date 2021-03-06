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

ActiveRecord::Schema.define(version: 20140811194309) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cookbooks", force: true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "directions", force: true do |t|
    t.integer  "recipe_id"
    t.integer  "sequence"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredients", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipe_cookbooks", force: true do |t|
    t.integer  "recipe_id"
    t.integer  "cookbook_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipe_ingredient_units", force: true do |t|
    t.integer  "recipe_id"
    t.integer  "ingredient_id"
    t.integer  "unit_id"
    t.float    "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes", force: true do |t|
    t.string   "title"
    t.integer  "creator_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "recipe_image_file_name"
    t.string   "recipe_image_content_type"
    t.integer  "recipe_image_file_size"
    t.datetime "recipe_image_updated_at"
    t.boolean  "scraped",                   default: false
  end

  create_table "units", force: true do |t|
    t.string   "unit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "image"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "witmodels", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
