# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_10_035040) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "advancements", force: :cascade do |t|
    t.bigint "skill_id", null: false
    t.bigint "character_id", null: false
    t.string "name"
    t.integer "passes", default: 0
    t.integer "fails", default: 0
    t.integer "level", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_advancements_on_character_id"
    t.index ["skill_id"], name: "index_advancements_on_skill_id"
  end

  create_table "characters", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.integer "age"
    t.string "home"
    t.string "fur_color"
    t.string "rank"
    t.string "cloak_color"
    t.string "parents"
    t.string "senior_artisan"
    t.string "mentor"
    t.string "friend"
    t.string "enemy"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "city_id"
    t.bigint "rank_id"
    t.string "belief"
    t.string "goal"
    t.string "instinct"
    t.integer "nature"
    t.integer "will"
    t.integer "health"
    t.integer "resources"
    t.integer "circles"
    t.string "parent_profession"
    t.string "artisan_profession"
    t.string "mentor_profession"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.integer "fate", default: 1
    t.integer "persona", default: 1
    t.boolean "is_sick", default: false, null: false
    t.boolean "is_hungry", default: false, null: false
    t.boolean "is_angry", default: false, null: false
    t.boolean "is_tired", default: false, null: false
    t.boolean "is_injured", default: false, null: false
    t.boolean "private", default: false, null: false
    t.index ["city_id"], name: "index_characters_on_city_id"
    t.index ["rank_id"], name: "index_characters_on_rank_id"
    t.index ["user_id"], name: "index_characters_on_user_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "skill_list"
    t.string "trait_list"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "conditions", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "consequence"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_contacts_on_character_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.bigint "creator_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["creator_id"], name: "index_groups_on_creator_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "character_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_items_on_character_id"
  end

  create_table "ranks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "rank_will"
    t.integer "rank_health"
    t.integer "rank_circles"
    t.integer "rank_resources"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trait_advancements", force: :cascade do |t|
    t.bigint "character_id", null: false
    t.bigint "trait_id", null: false
    t.integer "level"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_trait_advancements_on_character_id"
    t.index ["trait_id"], name: "index_trait_advancements_on_trait_id"
  end

  create_table "traits", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "description", default: "¯_(ツ)_/¯"
  end

  create_table "user_memberships", force: :cascade do |t|
    t.string "admin", default: "f", null: false
    t.boolean "approved", default: false, null: false
    t.bigint "member_id"
    t.bigint "group_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_id"], name: "index_user_memberships_on_group_id"
    t.index ["member_id"], name: "index_user_memberships_on_member_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wisdoms", force: :cascade do |t|
    t.bigint "wise_id", null: false
    t.bigint "character_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_wisdoms_on_character_id"
    t.index ["wise_id"], name: "index_wisdoms_on_wise_id"
  end

  create_table "wises", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "advancements", "characters"
  add_foreign_key "advancements", "skills"
  add_foreign_key "contacts", "characters"
  add_foreign_key "groups", "users", column: "creator_id"
  add_foreign_key "items", "characters"
  add_foreign_key "trait_advancements", "characters"
  add_foreign_key "trait_advancements", "traits"
  add_foreign_key "user_memberships", "groups"
  add_foreign_key "user_memberships", "users", column: "member_id"
  add_foreign_key "wisdoms", "characters"
  add_foreign_key "wisdoms", "wises"
end
