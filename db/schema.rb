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

ActiveRecord::Schema.define(:version => 20131206015624) do

  create_table "b_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "boards", :force => true do |t|
    t.string   "title"
    t.integer  "admin_user_id"
    t.integer  "group_id"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.integer  "roles_mask"
    t.string   "board_type"
    t.boolean  "show",          :default => false
    t.string   "description"
  end

  create_table "comments", :force => true do |t|
    t.integer  "user_id"
    t.text     "contents"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "commentable_id"
    t.string   "commentable_type"
  end

  create_table "contacts", :force => true do |t|
    t.string   "email"
    t.string   "name"
    t.integer  "user_id"
    t.string   "title"
    t.text     "body"
    t.string   "contact_type"
    t.string   "phone"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "posts", :force => true do |t|
    t.integer  "board_id"
    t.integer  "user_id"
    t.integer  "b_category_id"
    t.string   "title"
    t.text     "contents"
    t.string   "addlink"
    t.boolean  "isnotice"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.string   "image"
    t.boolean  "published",     :default => false
    t.text     "summary"
  end

  create_table "questions", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "contents"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "services", :force => true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.string   "uname"
    t.string   "uemail"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "test_models", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.boolean  "admin",                  :default => false
    t.string   "name"
    t.string   "phone"
    t.string   "gender"
    t.datetime "birth"
    t.string   "address"
    t.integer  "level"
    t.integer  "point"
    t.string   "provider"
    t.string   "uid"
    t.integer  "roles_mask"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
