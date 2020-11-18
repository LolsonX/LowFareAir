# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_16_091620) do

  create_table "cities", force: :cascade do |t|
    t.string "city_name"
    t.string "country"
    t.string "airport"
    t.string "language"
    t.string "country_iso_code"
  end

  create_table "flight_availabilities", force: :cascade do |t|
    t.string "flight_id"
    t.integer "segment_number"
    t.date "flight_date"
    t.integer "economy_seats_taken"
    t.integer "business_seats_taken"
    t.integer "firstclass_seats_taken"
    t.index ["flight_id"], name: "index_flight_availabilities_on_flight_id"
  end

  create_table "flight_histories", force: :cascade do |t|
    t.string "username"
    t.string "flight_id"
    t.string "orig_airport"
    t.string "dest_airport"
    t.string "begin_date"
    t.string "seat_class"
  end

  create_table "flights", force: :cascade do |t|
    t.string "flight_id"
    t.integer "segment_number"
    t.string "orig_airport"
    t.time "depart_time"
    t.string "dest_airport"
    t.time "arrive_time"
    t.string "meal"
    t.float "flying_time"
    t.integer "miles"
    t.string "aircraft"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
