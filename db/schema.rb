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

ActiveRecord::Schema.define(version: 20170910142213) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "monsters", force: :cascade do |t|
    t.string "name"
    t.string "special"
    t.integer "level", default: 1
    t.bigint "tribe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tribe_id"], name: "index_monsters_on_tribe_id"
  end

  create_table "tribes", force: :cascade do |t|
    t.string "name"
    t.integer "str", default: 0
    t.integer "mov", default: 0
    t.integer "dex", default: 0
    t.integer "con", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "monsters", "tribes"
end
