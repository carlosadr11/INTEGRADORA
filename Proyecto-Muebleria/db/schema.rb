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

ActiveRecord::Schema.define(version: 20160809041215) do

  create_table "clients", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "domicilio"
    t.string   "telefono"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "info_sales", force: :cascade do |t|
    t.integer  "sale_id"
    t.integer  "product_id"
    t.integer  "cantidad"
    t.float    "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "info_sales", ["product_id"], name: "index_info_sales_on_product_id"
  add_index "info_sales", ["sale_id"], name: "index_info_sales_on_sale_id"

  create_table "payments", force: :cascade do |t|
    t.date     "fecha"
    t.integer  "abono"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "provider_id"
  end

  create_table "products", force: :cascade do |t|
    t.string   "cantidad"
    t.string   "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "type_id"
    t.string   "nombre"
  end

  create_table "providers", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "domiciolio"
    t.string   "telefono"
    t.string   "email"
    t.integer  "totalProductos"
    t.date     "fecha"
    t.integer  "totalPago"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "sales", force: :cascade do |t|
    t.date     "fecha"
    t.string   "totalPago"
    t.integer  "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sales", ["client_id"], name: "index_sales_on_client_id"

  create_table "types", force: :cascade do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "venta", force: :cascade do |t|
    t.date     "fecha"
    t.string   "total_pago"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
