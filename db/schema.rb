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

ActiveRecord::Schema.define(version: 20150711105044) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string   "name"
    t.float    "exp"
    t.float    "hp"
    t.float    "hp_regen"
    t.float    "power"
    t.float    "power_regen"
    t.float    "speed"
    t.integer  "size"
    t.string   "move_type"
    t.string   "element"
    t.text     "color_schema"
    t.text     "emblem"
    t.text     "functions"
    t.text     "sprite"
    t.text     "sprite_idle"
    t.text     "sprite_death"
    t.text     "sprite_hat"
    t.text     "sprite_jacket"
    t.text     "sprite_shoes"
    t.text     "sprite_scarf"
    t.integer  "user_id"
    t.integer  "prime_gun_id"
    t.integer  "secondary_gun_id"
    t.integer  "prime_ability_id"
    t.integer  "secondary_ability_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "guns", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "length"
    t.float    "damage"
    t.float    "fire_rate"
    t.integer  "clip_size"
    t.float    "reload_time"
    t.float    "proj_size"
    t.float    "proj_speed"
    t.integer  "proj_distance"
    t.integer  "proj_number"
    t.integer  "proj_spread"
    t.text     "functions"
    t.text     "sprite"
    t.text     "sprite_firing"
    t.text     "sprite_reload"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "projectiles", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "element"
    t.text     "functions"
    t.text     "sprite"
    t.text     "sprite_start"
    t.text     "sprite_finish"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.boolean  "admin"
    t.integer  "highest_level"
    t.float    "rooms_explored"
    t.float    "enemies_killed"
    t.text     "emblem"
    t.string   "title"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
