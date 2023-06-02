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

ActiveRecord::Schema[7.0].define(version: 2023_06_02_123100) do
  create_table "prompts", force: :cascade do |t|
    t.integer "promptable_id", null: false
    t.text "request_body"
    t.text "response_body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["promptable_id"], name: "index_prompts_on_promptable_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.string "anchor"
    t.string "link_text"
    t.integer "site_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_url"
    t.index ["site_id"], name: "index_sections_on_site_id"
  end

  create_table "sites", force: :cascade do |t|
    t.string "title"
    t.string "headline"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "prompts", "promptables"
  add_foreign_key "sections", "sites"
end
