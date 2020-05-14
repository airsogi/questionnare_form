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

ActiveRecord::Schema.define(version: 2020_05_13_152603) do

  create_table "answer_choises", force: :cascade do |t|
    t.integer "question_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_answer_choises_on_question_id"
  end

  create_table "answer_denormalizes", force: :cascade do |t|
    t.integer "questionnaire_id", null: false
    t.integer "user_id", null: false
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["questionnaire_id"], name: "index_answer_denormalizes_on_questionnaire_id"
    t.index ["user_id"], name: "index_answer_denormalizes_on_user_id"
  end

  create_table "answer_details", force: :cascade do |t|
    t.string "answer_type", null: false
    t.integer "answer_id", null: false
    t.string "text"
    t.integer "answer_choise_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["answer_choise_id"], name: "index_answer_details_on_answer_choise_id"
    t.index ["answer_id"], name: "index_answer_details_on_answer_id"
  end

  create_table "answers", force: :cascade do |t|
    t.integer "questionnaire_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["questionnaire_id"], name: "index_answers_on_questionnaire_id"
    t.index ["user_id"], name: "index_answers_on_user_id"
  end

  create_table "questionnaires", force: :cascade do |t|
    t.string "name", limit: 30
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer "questionnaire_id", null: false
    t.integer "answer_type"
    t.integer "condition"
    t.string "name", limit: 100
    t.string "description", limit: 255
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["questionnaire_id"], name: "index_questions_on_questionnaire_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "zip_code"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "answer_choises", "questions"
  add_foreign_key "answer_denormalizes", "questionnaires"
  add_foreign_key "answer_denormalizes", "users"
  add_foreign_key "answer_details", "answers"
  add_foreign_key "answers", "questionnaires"
  add_foreign_key "answers", "users"
  add_foreign_key "questions", "questionnaires"
end
