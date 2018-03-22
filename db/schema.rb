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

ActiveRecord::Schema.define(version: 20180318080035) do

  create_table "schedules", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.time "arrival"
    t.integer "day"
    t.string "train_name"
    t.string "station_name"
    t.string "station_code"
    t.integer "train_number"
    t.time "departure"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["station_code", "train_number", "arrival", "departure"], name: "index_station_train_arr_dept"
  end

  create_table "stations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "state"
    t.string "code"
    t.string "name"
    t.string "zone"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trains", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.boolean "third_ac"
    t.time "arrival_time"
    t.string "source_station_code"
    t.string "name"
    t.string "zone"
    t.boolean "chair_car"
    t.boolean "first_class"
    t.integer "duration_m"
    t.boolean "sleeper"
    t.string "source_station_name"
    t.integer "number"
    t.time "departure_time"
    t.integer "return_train"
    t.string "destination_station_code"
    t.boolean "second_ac"
    t.string "classes"
    t.string "destination_station_name"
    t.integer "duration_h"
    t.string "train_type"
    t.boolean "first_ac"
    t.float "distance", limit: 24
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
