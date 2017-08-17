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

ActiveRecord::Schema.define(version: 20170815180013) do

  create_table "asteroides", force: :cascade do |t|
    t.string   "Asteroide"
    t.string   "Tamano"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cometa", force: :cascade do |t|
    t.string   "Cometa"
    t.string   "Tamano"
    t.string   "Color"
    t.string   "Stela"
    t.string   "Trayectoria"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "estrellas", force: :cascade do |t|
    t.string   "Estrella"
    t.string   "Tamano"
    t.string   "Masa"
    t.string   "Volumen"
    t.string   "Localizacion"
    t.string   "Color"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "galaxia", force: :cascade do |t|
    t.string   "Galaxia"
    t.string   "Diametro"
    t.integer  "CantidadEstrellas"
    t.integer  "CantidadPlanetas"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "nebulosas", force: :cascade do |t|
    t.string   "Nebulosa"
    t.string   "TipoNebulosa"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "planeta", force: :cascade do |t|
    t.string   "Planeta"
    t.string   "Tamano"
    t.integer  "Masa"
    t.integer  "Volumen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
