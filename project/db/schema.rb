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

ActiveRecord::Schema.define(version: 2019_05_26_012436) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
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

  create_table "admins", force: :cascade do |t|
    t.string "profile_image"
    t.string "nickname"
    t.string "biography"
    t.string "email"
    t.string "password"
    t.string "country"
    t.string "city"
    t.string "status"
    t.string "gps_location"
    t.integer "super_admin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["super_admin_id"], name: "index_admins_on_super_admin_id"
  end

  create_table "blacklists", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "text"
    t.string "image"
    t.string "link"
    t.integer "user_id"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "dumpsters", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dumpsters_posts", id: false, force: :cascade do |t|
    t.integer "post_id", null: false
    t.integer "dumpster_id", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.date "creation_date"
    t.string "solve_status"
    t.string "file"
    t.string "image"
    t.string "text"
    t.string "link"
    t.integer "wall_id"
    t.integer "super_admin_id"
    t.integer "admin_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_posts_on_admin_id"
    t.index ["super_admin_id"], name: "index_posts_on_super_admin_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
    t.index ["wall_id"], name: "index_posts_on_wall_id"
  end

  create_table "super_admins", force: :cascade do |t|
    t.string "profile_image"
    t.string "nickname"
    t.string "biography"
    t.string "email"
    t.string "password"
    t.string "country"
    t.string "city"
    t.string "status"
    t.string "gps_location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "profile_image"
    t.string "nickname"
    t.string "biography"
    t.string "email"
    t.string "password"
    t.string "country"
    t.string "city"
    t.string "status"
    t.string "gps_location"
    t.integer "super_admin_id"
    t.integer "admin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.string "token"
    t.integer "expires_at"
    t.boolean "expires"
    t.string "refresh_token"
    t.index ["admin_id"], name: "index_users_on_admin_id"
    t.index ["super_admin_id"], name: "index_users_on_super_admin_id"
  end

  create_table "walls", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
