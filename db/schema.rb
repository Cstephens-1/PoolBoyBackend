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

ActiveRecord::Schema.define(version: 2021_09_14_155734) do

  create_table "cleaners", force: :cascade do |t|
    t.string "name"
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
  end

  create_table "pools", force: :cascade do |t|
    t.string "size"
    t.boolean "cleaned"
    t.integer "times_cleaned"
    t.datetime "date_cleaned"
    t.integer "cleaner_id"
    t.integer "owner_id"
    t.index ["cleaner_id"], name: "index_pools_on_cleaner_id"
    t.index ["owner_id"], name: "index_pools_on_owner_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "comment"
    t.integer "rating"
    t.integer "owner_id"
    t.integer "cleaner_id"
    t.integer "pool_id"
    t.index ["cleaner_id"], name: "index_reviews_on_cleaner_id"
    t.index ["owner_id"], name: "index_reviews_on_owner_id"
    t.index ["pool_id"], name: "index_reviews_on_pool_id"
  end

end
