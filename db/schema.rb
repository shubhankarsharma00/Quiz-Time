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

ActiveRecord::Schema.define(version: 2019_08_18_085117) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "name"
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "assignings", force: :cascade do |t|
    t.bigint "question_id"
    t.bigint "assignment_id"
    t.index ["assignment_id"], name: "index_assignings_on_assignment_id"
    t.index ["question_id"], name: "index_assignings_on_question_id"
  end

  create_table "assignments", force: :cascade do |t|
    t.bigint "author_id"
    t.string "topic"
    t.index ["author_id"], name: "index_assignments_on_author_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "statement"
    t.string "answer"
    t.string "A"
    t.string "B"
    t.string "C"
  end

  create_table "scorecards", force: :cascade do |t|
    t.bigint "assignment_id"
    t.bigint "student_id"
    t.integer "marks"
    t.index ["assignment_id"], name: "index_scorecards_on_assignment_id"
    t.index ["student_id"], name: "index_scorecards_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "name"
    t.index ["email"], name: "index_students_on_email", unique: true
    t.index ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true
  end

  add_foreign_key "assignings", "assignments"
  add_foreign_key "assignings", "questions"
  add_foreign_key "assignments", "admins", column: "author_id"
  add_foreign_key "scorecards", "assignments"
  add_foreign_key "scorecards", "students"
end
