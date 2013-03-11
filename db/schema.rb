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

ActiveRecord::Schema.define(:version => 20121106024622) do

  create_table "accounting_entities", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "agencies", :force => true do |t|
    t.string   "name"
    t.string   "scope"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "associated_taxes", :force => true do |t|
    t.integer  "tax_id"
    t.integer  "company_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.integer  "verificationDigit"
    t.date     "closeDate"
    t.integer  "accounting_entity_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "company_expirations", :force => true do |t|
    t.integer  "associated_tax_id"
    t.date     "date"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "expirations", :force => true do |t|
    t.date     "date"
    t.integer  "ending_first"
    t.integer  "ending_last"
    t.integer  "tax_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "presentations", :force => true do |t|
    t.date     "date"
    t.date     "expiration_date"
    t.string   "detail"
    t.integer  "asociated_tax_id"
    t.integer  "user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "supervisions", :force => true do |t|
    t.integer  "user_id"
    t.integer  "associated_tax_id"
    t.integer  "level"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "supervisions", ["associated_tax_id"], :name => "index_supervisions_on_associated_tax_id"
  add_index "supervisions", ["user_id", "associated_tax_id", "level"], :name => "index_supervisions_on_user_id_and_associated_tax_id_and_level", :unique => true
  add_index "supervisions", ["user_id"], :name => "index_supervisions_on_user_id"

  create_table "taxes", :force => true do |t|
    t.string   "name"
    t.string   "period"
    t.integer  "agency_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "accounting_entity_id"
    t.integer  "role_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
