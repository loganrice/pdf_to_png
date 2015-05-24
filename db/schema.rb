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

ActiveRecord::Schema.define(version: 20150521221756) do

  create_table "claims", force: :cascade do |t|
    t.string   "client_address"
    t.string   "client_city"
    t.string   "client_first_name"
    t.date     "initial_contact_date"
    t.time     "client_contact_time"
    t.string   "gender"
    t.date     "retained_services_date"
    t.time     "retained_services_time"
    t.string   "client_zip_code"
    t.string   "client_state"
    t.string   "client_claim_number"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "client_last_name"
    t.string   "body_type"
    t.string   "color"
    t.date     "date_of_loss"
    t.string   "drivetrain"
    t.string   "engine_size"
    t.string   "make"
    t.string   "model"
    t.integer  "mileage"
    t.string   "photo_provided_by"
    t.string   "transmission"
    t.string   "vin"
    t.integer  "year"
    t.integer  "claim_id"
  end

  create_table "vehicle_photos", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "claim_id"
    t.string   "vehicle"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "body_type"
    t.string   "color"
    t.date     "date_of_loss"
    t.string   "drivetrain"
    t.string   "engine_size"
    t.string   "make"
    t.string   "model"
    t.integer  "mileage"
    t.string   "photo_provided_by"
    t.string   "transmission"
    t.string   "vin"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "claim_id"
  end

end
