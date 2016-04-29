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

ActiveRecord::Schema.define(version: 20160417203903) do

  create_table "aulas", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departamentos", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "derivacions", force: :cascade do |t|
    t.string   "observaciones"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "entrevista_id"
    t.integer  "departamento_id"
  end

  add_index "derivacions", ["departamento_id"], name: "index_derivacions_on_departamento_id"
  add_index "derivacions", ["entrevista_id"], name: "index_derivacions_on_entrevista_id"

  create_table "entrevista", force: :cascade do |t|
    t.boolean  "asistencia"
    t.boolean  "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "aula_id"
    t.integer  "motivo_id"
    t.integer  "horario_id"
  end

  add_index "entrevista", ["aula_id"], name: "index_entrevista_on_aula_id"
  add_index "entrevista", ["horario_id"], name: "index_entrevista_on_horario_id"
  add_index "entrevista", ["motivo_id"], name: "index_entrevista_on_motivo_id"

  create_table "horarios", force: :cascade do |t|
    t.time     "hora_inicio"
    t.time     "hora_fin"
    t.date     "dia"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "motivos", force: :cascade do |t|
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

end
