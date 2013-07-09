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

ActiveRecord::Schema.define(:version => 20130709060101) do

  create_table "categories", :force => true do |t|
    t.string   "category_name"
    t.string   "category_description"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "contacts", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lists", :force => true do |t|
    t.string   "category_name"
    t.string   "category_description"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "category_slug"
  end

  create_table "pins", :force => true do |t|
    t.string   "category_name"
    t.string   "image"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "list_id"
    t.string   "pins_file_name"
    t.string   "pins_content_type"
    t.integer  "pins_file_size"
    t.datetime "pins_updated_at"
  end

end
