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

ActiveRecord::Schema.define(version: 20140506145436) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "features", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plots", force: true do |t|
    t.string   "title"
    t.integer  "price",            limit: 8
    t.integer  "feature_id"
    t.integer  "property_type_id"
    t.integer  "region_id"
    t.string   "address1"
    t.string   "address2"
    t.string   "town"
    t.string   "postcode"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "latitude"
    t.float    "longitude"
  end

  add_index "plots", ["feature_id"], name: "index_plots_on_feature_id", using: :btree
  add_index "plots", ["property_type_id"], name: "index_plots_on_property_type_id", using: :btree
  add_index "plots", ["region_id"], name: "index_plots_on_region_id", using: :btree

  create_table "property_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ancestry"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "title"
    t.string   "firstname"
    t.string   "lastname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
