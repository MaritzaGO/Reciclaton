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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160401223647) do

  create_table "alliances", force: :cascade do |t|
    t.string   "client_supplier_id"
    t.string   "client_recipient_id"
    t.string   "supply_id"
    t.string   "demand_id"
    t.string   "agreed_quantity"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "recycling_line"
    t.string   "environmental_impact"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name_complet"
    t.string   "customer_type"
    t.string   "identification_number"
    t.string   "ubication"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "clients", ["email"], name: "index_clients_on_email", unique: true
  add_index "clients", ["reset_password_token"], name: "index_clients_on_reset_password_token", unique: true

  create_table "demands", force: :cascade do |t|
    t.string   "client_id"
    t.string   "residue_id"
    t.string   "demanded_monthly_quantity"
    t.integer  "state"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "residues", force: :cascade do |t|
    t.string   "name_redidue"
    t.string   "category_id"
    t.string   "available_quantity"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "supplies", force: :cascade do |t|
    t.string   "client_id"
    t.string   "residue_id"
    t.string   "supplied_monthly_quantity"
    t.integer  "stock"
    t.integer  "state"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
