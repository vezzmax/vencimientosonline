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

ActiveRecord::Schema.define(:version => 20121008200956) do

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
    t.integer  "user_id"
    t.integer  "tax_id"
    t.integer  "company_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.string   "CUIT"
    t.date     "close_date"
    t.integer  "accounting_entity_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "expirations", :force => true do |t|
    t.date     "date"
    t.integer  "endingFirst"
    t.integer  "endingLast"
    t.integer  "tax_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "presentations", :force => true do |t|
    t.date     "date"
    t.string   "detail"
    t.integer  "expiration_id"
    t.integer  "user_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

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
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
