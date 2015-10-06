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

ActiveRecord::Schema.define(:version => 20151006124209) do

  create_table "finances_entries", :force => true do |t|
    t.integer  "amount"
    t.datetime "date"
    t.string   "description"
  end

  create_table "finances_income_statements", :force => true do |t|
    t.string   "name"
    t.integer  "adwords"
    t.integer  "facebook_ad"
    t.integer  "facebook_paid_publications"
    t.integer  "zencoder_dollars"
    t.integer  "zencoder_reais"
    t.integer  "heroku_dollars"
    t.integer  "heroku_reais"
    t.integer  "pagseguro"
    t.integer  "amazon_dollars"
    t.integer  "amazon_reais"
    t.integer  "paypal"
    t.integer  "revenues"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "finances_reports", :force => true do |t|
    t.string "name"
    t.string "description"
    t.text   "snapshot"
  end

end
