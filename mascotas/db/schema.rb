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

ActiveRecord::Schema.define(version: 20150801165340) do

  create_table "appointments", force: :cascade do |t|
    t.datetime "fecha"
    t.integer  "client_id",  limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "appointments", ["client_id"], name: "index_appointments_on_client_id", using: :btree

  create_table "clients", force: :cascade do |t|
    t.string   "dni",        limit: 255
    t.string   "nombre",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "fecha"
    t.integer  "pacient_id", limit: 4
    t.integer  "product_id", limit: 4
    t.integer  "service_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "orders", ["pacient_id"], name: "index_orders_on_pacient_id", using: :btree
  add_index "orders", ["product_id"], name: "index_orders_on_product_id", using: :btree
  add_index "orders", ["service_id"], name: "index_orders_on_service_id", using: :btree

  create_table "pacients", force: :cascade do |t|
    t.string   "mascota",    limit: 255
    t.integer  "client_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "pacients", ["client_id"], name: "index_pacients_on_client_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "producto",   limit: 255
    t.decimal  "costo",                  precision: 10
    t.integer  "pacient_id", limit: 4
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "products", ["pacient_id"], name: "index_products_on_pacient_id", using: :btree

  create_table "services", force: :cascade do |t|
    t.string   "servicio",   limit: 255
    t.decimal  "costo",                  precision: 10
    t.integer  "pacient_id", limit: 4
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "services", ["pacient_id"], name: "index_services_on_pacient_id", using: :btree

  add_foreign_key "appointments", "clients"
  add_foreign_key "orders", "pacients"
  add_foreign_key "orders", "products"
  add_foreign_key "orders", "services"
  add_foreign_key "pacients", "clients"
  add_foreign_key "products", "pacients"
  add_foreign_key "services", "pacients"
end
