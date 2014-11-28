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

ActiveRecord::Schema.define(version: 20141128124256) do

  create_table "cars", force: true do |t|
    t.string   "brand"
    t.string   "series"
    t.string   "car_type"
    t.integer  "base_price"
    t.integer  "year"
    t.integer  "consumption"
    t.string   "transmission"
    t.string   "driving"
    t.integer  "gears"
    t.string   "color"
    t.integer  "doors"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cars_options", id: false, force: true do |t|
    t.integer "car_id"
    t.integer "option_id"
  end

  add_index "cars_options", ["car_id"], name: "index_cars_options_on_car_id"
  add_index "cars_options", ["option_id"], name: "index_cars_options_on_option_id"

  create_table "options", force: true do |t|
    t.string   "name"
    t.integer  "price"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "car_id"
    t.integer  "option_id"
  end

end
