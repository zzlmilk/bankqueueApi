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

ActiveRecord::Schema.define(:version => 20130814095824) do

  create_table "bank_types", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "banks", :force => true do |t|
    t.string  "name"
    t.integer "type"
    t.float   "longitude"
    t.float   "latitude"
    t.string  "phone"
    t.string  "province"
    t.string  "city"
    t.string  "address"
  end

  create_table "com_areas", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "com_cities", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "com_provinces", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "service_types", :force => true do |t|
    t.string   "service_id"
    t.string   "service_name"
    t.string   "service_tag"
    t.string   "parent_id"
    t.integer  "priority_level"
    t.boolean  "is_exist_form"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "password"
    t.string   "eamil"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
