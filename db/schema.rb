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

ActiveRecord::Schema.define(version: 2022_02_02_005338) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "name"
    t.bigint "city_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_addresses_on_city_id"
  end

  create_table "businesses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.bigint "region_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["region_id"], name: "index_cities_on_region_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "telephone"
    t.string "rut"
    t.date "hire_date"
    t.string "status"
    t.date "birth_date"
    t.bigint "role_id", null: false
    t.bigint "business_id", null: false
    t.bigint "address_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address_id"], name: "index_employees_on_address_id"
    t.index ["business_id"], name: "index_employees_on_business_id"
    t.index ["role_id"], name: "index_employees_on_role_id"
  end

  create_table "grades", force: :cascade do |t|
    t.string "name"
    t.integer "min_gsalary"
    t.integer "max_gsalary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "job_histories", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.bigint "employee_id", null: false
    t.bigint "job_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_job_histories_on_employee_id"
    t.index ["job_id"], name: "index_job_histories_on_job_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "name"
    t.string "department"
    t.integer "min_salary"
    t.integer "max_salary"
    t.bigint "grade_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["grade_id"], name: "index_jobs_on_grade_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.bigint "role_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  add_foreign_key "addresses", "cities"
  add_foreign_key "cities", "regions"
  add_foreign_key "employees", "addresses"
  add_foreign_key "employees", "businesses"
  add_foreign_key "employees", "roles"
  add_foreign_key "job_histories", "employees"
  add_foreign_key "job_histories", "jobs"
  add_foreign_key "jobs", "grades"
  add_foreign_key "users", "roles"
end
