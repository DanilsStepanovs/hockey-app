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

ActiveRecord::Schema.define(version: 2019_03_17_124950) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "number"
    t.string "position"
    t.string "club"
    t.bigint "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "scores", force: :cascade do |t|
    t.integer "points"
    t.integer "guest_points"
    t.bigint "team_id"
    t.bigint "guest_team_id"
    t.boolean "add_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guest_team_id"], name: "index_scores_on_guest_team_id"
    t.index ["team_id"], name: "index_scores_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "title"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "players", "teams"
  add_foreign_key "scores", "teams"
  add_foreign_key "scores", "teams", column: "guest_team_id"
end
