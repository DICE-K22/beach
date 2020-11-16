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

ActiveRecord::Schema.define(version: 2020_11_16_022732) do

  create_table "reviews", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title", null: false
    t.string "place", null: false
    t.integer "year_visit", null: false
    t.integer "month_visit", null: false
    t.text "pros"
    t.text "cons"
    t.integer "type_of_visitor", null: false
    t.integer "type_of_beach", null: false
    t.integer "color_of_sand", null: false
    t.integer "cleanliness", null: false
    t.integer "transparency", null: false
    t.integer "quietness", null: false
    t.integer "crowd", null: false
    t.integer "street_vendor", null: false
    t.integer "shop", null: false
    t.integer "toilet", null: false
    t.integer "shower", null: false
    t.integer "recommended", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
