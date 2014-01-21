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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131220104701) do

  create_table "distributors", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "telephone"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "medicines", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "packing_id"
    t.string   "manufacturer"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "packings", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.integer  "unit"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "purchases", :force => true do |t|
    t.integer  "medicine_id"
    t.string   "batch"
    t.string   "bill_no"
    t.integer  "quantity"
    t.decimal  "purchage_rate",  :precision => 8, :scale => 2
    t.integer  "user_id"
    t.date     "purchage_date"
    t.integer  "distributor_id"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  create_table "stocks", :force => true do |t|
    t.integer  "medicine_id"
    t.string   "batch"
    t.integer  "quantity"
    t.decimal  "mrp",         :precision => 8, :scale => 2
    t.date     "expdate"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "username"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
