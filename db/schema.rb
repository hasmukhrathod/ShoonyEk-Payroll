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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110815120617) do

  create_table "answers", :force => true do |t|
    t.integer  "question_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departments", :force => true do |t|
    t.string   "dept_id"
    t.string   "name"
    t.text     "detail"
    t.string   "manager"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "designations", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "educations", :force => true do |t|
    t.integer  "employee_master_id"
    t.string   "emp_education"
    t.float    "marks_class"
    t.date     "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emp_contacts", :force => true do |t|
    t.integer  "employee_master_id"
    t.string   "street_1"
    t.string   "street_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "home_telephone"
    t.string   "mobile"
    t.string   "work_telephone"
    t.string   "work_email"
    t.string   "other_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emp_immigrations", :force => true do |t|
    t.integer  "employee_master_id"
    t.string   "passport_no"
    t.date     "issued_date"
    t.date     "expiry_date"
    t.string   "citizenship"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employee_masters", :force => true do |t|
    t.integer  "emp_id"
    t.string   "emp_name"
    t.string   "nick_name"
    t.string   "gender"
    t.string   "nationality"
    t.string   "martial_status"
    t.string   "driving_licence_number"
    t.date     "driving_licence_expiry_date"
    t.string   "pan_number"
    t.string   "photograph"
    t.integer  "designation_id"
    t.date     "d_o_b"
    t.date     "d_o_j"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "department_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "parent_id"
  end

  create_table "esi_masters", :force => true do |t|
    t.string   "book_no"
    t.string   "stamp_no"
    t.integer  "employer_code"
    t.integer  "branch_id"
    t.integer  "employee_master_id"
    t.text     "remarks"
    t.string   "medical_officer"
    t.string   "industry_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.integer  "employee_master_id"
    t.string   "name"
    t.datetime "start_at"
    t.datetime "end_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "all_day"
    t.text     "description"
  end

  create_table "leave_managements", :force => true do |t|
    t.integer  "employee_master_id"
    t.date     "leave_taken_on_date"
    t.date     "leave_till_date"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "leave_type"
    t.string   "alternate_contact_number"
    t.string   "status"
  end

  create_table "questions", :force => true do |t|
    t.integer  "survey_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resumes", :force => true do |t|
    t.integer  "employee_master_id"
    t.text     "skill"
    t.text     "work_experience"
    t.string   "last_company_working_name"
    t.date     "working_from"
    t.date     "working_till"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "salaries", :force => true do |t|
    t.float    "basic"
    t.integer  "designation_id"
    t.float    "l_t_a"
    t.float    "h_r_a"
    t.float    "p_f"
    t.float    "bonus"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "surveys", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "role_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
