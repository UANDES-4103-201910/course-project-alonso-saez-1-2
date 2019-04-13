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

ActiveRecord::Schema.define(version: 2019_04_13_004347) do

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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["admin_id"], name: "index_posts_on_admin_id"
    t.index ["super_admin_id"], name: "index_posts_on_super_admin_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
    t.index ["wall_id"], name: "index_posts_on_wall_id"
  end

  create_table "posts_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "post_id", null: false
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
    t.index ["admin_id"], name: "index_users_on_admin_id"
    t.index ["super_admin_id"], name: "index_users_on_super_admin_id"
  end

  create_table "walls", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
