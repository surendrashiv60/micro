# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20140427133643) do

  create_table "companies", :force => true do |t|
    t.string   "company_name"
    t.text     "company_address"
    t.string   "contact_person"
    t.string   "email"
    t.date     "application_due_date"
    t.integer  "no_of_contact"
    t.boolean  "is_active"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "contact_groups", :force => true do |t|
    t.string   "contact_group_name"
    t.text     "contact_group_description"
    t.boolean  "is_active"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "contacts", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "contact_no",       :limit => 8
    t.date     "date_of_birth"
    t.text     "address"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.integer  "contact_group_id"
  end

  create_table "groups", :force => true do |t|
    t.string   "group_name"
    t.text     "group_description"
    t.boolean  "is_active"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "groups_privileges", :id => false, :force => true do |t|
    t.integer "group_id"
    t.integer "privilege_id"
  end

  create_table "groups_roles", :id => false, :force => true do |t|
    t.integer "group_id"
    t.integer "role_id"
  end

  create_table "privileges", :force => true do |t|
    t.string   "privilege_name"
    t.text     "privilege_description"
    t.string   "controller"
    t.string   "action"
    t.boolean  "is_active"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.integer  "system_module_id"
  end

  create_table "reminders", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.time     "at_time"
    t.date     "at_date"
    t.text     "message"
    t.string   "recurrence"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.integer  "contact_group_id"
    t.boolean  "is_active",        :default => true
  end

  create_table "roles", :force => true do |t|
    t.string   "role_name"
    t.text     "role_description"
    t.boolean  "is_active"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "schedule_contacts", :force => true do |t|
    t.string  "name"
    t.integer "contact_no",  :limit => 8
    t.integer "reminder_id"
    t.string  "status"
  end

  create_table "sms_templates", :force => true do |t|
    t.text     "message"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "system_modules", :force => true do |t|
    t.string   "system_module_name"
    t.text     "system_module_description"
    t.integer  "system_module_order"
    t.boolean  "is_active"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "gender"
    t.integer  "contact_no",      :limit => 8
    t.text     "address"
    t.boolean  "is_active",                    :default => true, :null => false
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
  end

end
