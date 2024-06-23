# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_06_23_161740) do
  create_table "logs", force: :cascade do |t|
    t.integer "topic_id", null: false
    t.integer "as_int"
    t.string "as_string"
    t.text "as_text"
    t.float "as_float"
    t.integer "as_duration"
    t.boolean "as_boolean"
    t.integer "min_scale"
    t.integer "max_scale"
    t.string "as_list"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["topic_id"], name: "index_logs_on_topic_id"
  end

  create_table "topics", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "is_active", default: true
    t.boolean "is_default", default: false
    t.boolean "is_int", default: false
    t.boolean "is_string", default: false
    t.boolean "is_text", default: false
    t.boolean "is_float", default: false
    t.boolean "is_duration", default: false
    t.boolean "is_boolean", default: false
    t.integer "min_scale", default: 0
    t.integer "max_scale", default: 10
    t.boolean "is_list", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "logs", "topics"
end
