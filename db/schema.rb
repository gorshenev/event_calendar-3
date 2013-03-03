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

ActiveRecord::Schema.define(:version => 20130302020843) do

  create_table "available_users", :force => true do |t|
    t.string   "user_id"
    t.string   "event_id"
    t.boolean  "available"
    t.boolean  "not_available"
    t.boolean  "maybe"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "banned_users", :force => true do |t|
    t.string   "user_id"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "event_title"
    t.date     "event_date"
    t.datetime "start_at"
    t.datetime "end_at"
    t.text     "event_description"
    t.string   "user_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end
  
  add_index "events", ["user_id"], :name => "index_events_on_user_id"

  create_table "user_roles", :force => true do |t|
    t.string   "role"
    t.text     "description"
    t.string   "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "email"
    t.boolean  "authorized"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
