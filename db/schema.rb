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

ActiveRecord::Schema.define(version: 20150513181218) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "services", force: :cascade do |t|
    t.integer  "user_id"
    t.boolean  "bk_web"
    t.boolean  "bk_glpi"
    t.boolean  "bk_diarias"
    t.boolean  "bk_ldap"
    t.boolean  "bkp_dns"
    t.boolean  "bk_pagina"
    t.boolean  "bk_mentor"
    t.boolean  "bk_dhcp"
    t.boolean  "bk_opera"
    t.boolean  "bk_abacus"
    t.boolean  "bk_sisconsig"
    t.boolean  "bk_antivirus"
    t.boolean  "bk_sigadaer"
    t.boolean  "bk_email"
    t.boolean  "bk_atis"
    t.boolean  "ck_sala"
    t.boolean  "ck_xen"
    t.boolean  "ck_virtuais"
    t.boolean  "ck_intraer"
    t.boolean  "ck_internet"
    t.boolean  "ck_pagina"
    t.boolean  "ck_email"
    t.boolean  "ck_sigadaer"
    t.boolean  "ck_sims"
    t.string   "dia_semana"
    t.text     "alteracoes"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.boolean  "cksalam"
    t.boolean  "cksalat"
    t.boolean  "cksalan"
    t.boolean  "ckxenm"
    t.boolean  "ckxent"
    t.boolean  "ckxenn"
    t.boolean  "ckvirm"
    t.boolean  "ckvirt"
    t.boolean  "ckvirn"
    t.boolean  "ckintm"
    t.boolean  "ckintt"
    t.boolean  "ckintn"
    t.boolean  "ckpagem"
    t.boolean  "ckpaget"
    t.boolean  "ckpagen"
    t.boolean  "ckinterm"
    t.boolean  "ckintert"
    t.boolean  "ckintern"
    t.boolean  "ckemailm"
    t.boolean  "ckemailt"
    t.boolean  "ckemailn"
    t.boolean  "cksigm"
    t.boolean  "cksigt"
    t.boolean  "cksign"
    t.boolean  "cksimm"
    t.boolean  "cksimt"
    t.boolean  "cksimn"
    t.boolean  "bk_nagios"
  end

  add_index "services", ["user_id"], name: "index_services_on_user_id", using: :btree

  create_table "types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "login"
    t.string   "password"
    t.string   "name"
    t.string   "graduation"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "type_id"
  end

  add_index "users", ["type_id"], name: "index_users_on_type_id", using: :btree

  add_foreign_key "services", "users"
  add_foreign_key "users", "types"
end
