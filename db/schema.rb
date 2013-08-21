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

ActiveRecord::Schema.define(:version => 20130821025204) do

  create_table "bank_type", :force => true do |t|
    t.string "bank_type", :limit => 100
    t.string "parentId",  :limit => 60,  :default => ""
  end

  create_table "banks", :force => true do |t|
    t.string  "name"
    t.integer "type"
    t.float   "longitude"
    t.float   "latitude"
    t.string  "phone"
    t.string  "province"
    t.string  "city"
    t.string  "area",      :limit => 11
    t.string  "address"
  end

  create_table "com_area", :primary_key => "cou_id", :force => true do |t|
    t.string "cou_name", :limit => 60, :default => "", :null => false
    t.string "cit_id",   :limit => 4,                  :null => false
    t.string "pro_id",   :limit => 2,                  :null => false
    t.string "pinyin",                                 :null => false
  end

  create_table "com_city", :primary_key => "cit_id", :force => true do |t|
    t.string "cit_name", :limit => 60, :default => "", :null => false
    t.string "pro_id",   :limit => 2,                  :null => false
    t.string "pinyin",                                 :null => false
  end

  create_table "com_province", :primary_key => "pro_id", :force => true do |t|
    t.string  "pro_name", :limit => 15, :default => "", :null => false
    t.integer "grade",    :limit => 1,  :default => 3,  :null => false
    t.string  "pinyin",                                 :null => false
  end

  create_table "number_infos", :force => true do |t|
    t.string   "number_id"
    t.integer  "number_order"
    t.integer  "number_status"
    t.datetime "number_date"
    t.integer  "now_number"
    t.string   "waited_count"
    t.string   "service_id"
    t.string   "service_name"
    t.string   "service_parent_id"
    t.string   "service_tag"
    t.string   "bank_id"
    t.string   "bank_name"
    t.string   "bank_type_name"
    t.boolean  "is_exist_form"
    t.string   "form_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "service_types", :primary_key => "service_id", :force => true do |t|
    t.integer  "id",             :null => false
    t.string   "service_name"
    t.string   "service_tag"
    t.string   "parent_id"
    t.integer  "priority_level"
    t.boolean  "is_exist_form"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "service_types", ["id"], :name => "id", :unique => true

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "password"
    t.string   "eamil"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
