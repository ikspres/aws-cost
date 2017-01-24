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

ActiveRecord::Schema.define(version: 20170124002307) do

  create_table "instances", force: :cascade do |t|
    t.string   "instance_type"
    t.string   "operating_system"
    t.float    "price_per_unit"
    t.string   "unit"
    t.string   "term_type"
    t.string   "lease_contract_length"
    t.string   "purchase_option"
    t.string   "location"
    t.integer  "vcpu"
    t.float    "memory"
    t.float    "storage"
    t.string   "physical_processor"
    t.float    "clock_speed"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "pre_installed_sw"
    t.string   "sku"
    t.string   "tenancy"
    t.string   "license_model"
    t.string   "product_family"
  end

end
