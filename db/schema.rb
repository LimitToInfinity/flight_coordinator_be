# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_08_09_011637) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "flights", force: :cascade do |t|
    t.string "airline"
    t.string "airport"
    t.datetime "datetime"
    t.string "datetime_string"
    t.string "direction"
    t.string "number"
    t.bigint "traveler_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["traveler_id"], name: "index_flights_on_traveler_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "image"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rides", force: :cascade do |t|
    t.bigint "driver_id", null: false
    t.bigint "traveler_id", null: false
    t.bigint "flight_id", null: false
    t.bigint "shuttle_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["driver_id"], name: "index_rides_on_driver_id"
    t.index ["flight_id"], name: "index_rides_on_flight_id"
    t.index ["shuttle_id"], name: "index_rides_on_shuttle_id"
    t.index ["traveler_id", "driver_id", "flight_id"], name: "index_rides_on_traveler_id_and_driver_id_and_flight_id", unique: true
    t.index ["traveler_id"], name: "index_rides_on_traveler_id"
  end

  create_table "shuttles", force: :cascade do |t|
    t.datetime "datetime"
    t.string "datetime_string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "flights", "people", column: "traveler_id"
  add_foreign_key "rides", "flights"
  add_foreign_key "rides", "people", column: "driver_id"
  add_foreign_key "rides", "people", column: "traveler_id"
  add_foreign_key "rides", "shuttles"
end
