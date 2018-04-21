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

ActiveRecord::Schema.define(version: 20180421001533) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "description"
    t.integer "num"
    t.bigint "city_id"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_addresses_on_city_id"
  end

  create_table "administrators", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.string "remember_token"
    t.datetime "remember_token_expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "initials"
    t.bigint "state_id"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "class_rooms", force: :cascade do |t|
    t.string "name"
    t.bigint "course_id"
    t.bigint "city_id"
    t.bigint "address_id"
    t.date "begin"
    t.date "end"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_class_rooms_on_address_id"
    t.index ["city_id"], name: "index_class_rooms_on_city_id"
    t.index ["course_id"], name: "index_class_rooms_on_course_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "address_id"
    t.index ["address_id"], name: "index_companies_on_address_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "initials"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "course_modules", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.bigint "type_course_id"
    t.bigint "model_certificate_id"
    t.integer "number_modules"
    t.float "average"
    t.float "frequency"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["model_certificate_id"], name: "index_courses_on_model_certificate_id"
    t.index ["type_course_id"], name: "index_courses_on_type_course_id"
  end

  create_table "disciplines", force: :cascade do |t|
    t.string "name"
    t.string "initials"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enrollments", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "class_room_id"
    t.integer "roll_number"
    t.float "average"
    t.float "frequency"
    t.integer "faults"
    t.integer "final_result"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["class_room_id"], name: "index_enrollments_on_class_room_id"
    t.index ["student_id"], name: "index_enrollments_on_student_id"
  end

  create_table "grid_disciplines", force: :cascade do |t|
    t.bigint "grid_id"
    t.bigint "discipline_id"
    t.integer "at"
    t.integer "ap"
    t.integer "est"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["discipline_id"], name: "index_grid_disciplines_on_discipline_id"
    t.index ["grid_id"], name: "index_grid_disciplines_on_grid_id"
  end

  create_table "grids", force: :cascade do |t|
    t.string "name"
    t.bigint "course_id"
    t.bigint "course_module_id"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_grids_on_course_id"
    t.index ["course_module_id"], name: "index_grids_on_course_module_id"
  end

  create_table "model_certificates", force: :cascade do |t|
    t.string "name"
    t.text "template"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.bigint "enrollment_id"
    t.bigint "grid_discipline_id"
    t.float "note1"
    t.float "note2"
    t.float "note3"
    t.float "note4"
    t.float "note5"
    t.float "internship"
    t.float "recovery"
    t.float "average"
    t.float "frequency"
    t.bigint "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["enrollment_id"], name: "index_notes_on_enrollment_id"
    t.index ["grid_discipline_id"], name: "index_notes_on_grid_discipline_id"
    t.index ["teacher_id"], name: "index_notes_on_teacher_id"
  end

  create_table "scholarities", force: :cascade do |t|
    t.string "name"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.string "initials"
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_states_on_country_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "rg"
    t.string "cpf"
    t.date "birth"
    t.bigint "scholarity_id"
    t.string "photo"
    t.string "phone"
    t.bigint "address_id"
    t.integer "gender"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_students_on_address_id"
    t.index ["scholarity_id"], name: "index_students_on_scholarity_id"
  end

  create_table "teacher_disciplines", force: :cascade do |t|
    t.bigint "teacher_id"
    t.bigint "class_room_id"
    t.bigint "grid_id"
    t.bigint "discipline_id"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["class_room_id"], name: "index_teacher_disciplines_on_class_room_id"
    t.index ["discipline_id"], name: "index_teacher_disciplines_on_discipline_id"
    t.index ["grid_id"], name: "index_teacher_disciplines_on_grid_id"
    t.index ["teacher_id"], name: "index_teacher_disciplines_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "rg"
    t.string "cpf"
    t.bigint "address_id"
    t.string "phone"
    t.bigint "city_id"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_teachers_on_address_id"
    t.index ["city_id"], name: "index_teachers_on_city_id"
  end

  create_table "type_courses", force: :cascade do |t|
    t.string "name"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "addresses", "cities"
  add_foreign_key "cities", "states"
  add_foreign_key "class_rooms", "addresses"
  add_foreign_key "class_rooms", "cities"
  add_foreign_key "class_rooms", "courses"
  add_foreign_key "companies", "addresses"
  add_foreign_key "courses", "model_certificates"
  add_foreign_key "courses", "type_courses"
  add_foreign_key "enrollments", "class_rooms"
  add_foreign_key "enrollments", "students"
  add_foreign_key "grid_disciplines", "disciplines"
  add_foreign_key "grid_disciplines", "grids"
  add_foreign_key "grids", "course_modules"
  add_foreign_key "grids", "courses"
  add_foreign_key "notes", "enrollments"
  add_foreign_key "notes", "grid_disciplines"
  add_foreign_key "notes", "teachers"
  add_foreign_key "states", "countries"
  add_foreign_key "students", "addresses"
  add_foreign_key "students", "scholarities"
  add_foreign_key "teacher_disciplines", "class_rooms"
  add_foreign_key "teacher_disciplines", "disciplines"
  add_foreign_key "teacher_disciplines", "grids"
  add_foreign_key "teacher_disciplines", "teachers"
  add_foreign_key "teachers", "addresses"
  add_foreign_key "teachers", "cities"
end
