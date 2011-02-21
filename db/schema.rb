# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100627041448) do

  create_table "commitments", :id => false, :force => true do |t|
    t.integer "supporter_id",   :null => false
    t.integer "pledge_id",      :null => false
    t.date    "commit_date"
    t.date    "completed_date"
  end

  create_table "emails", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facts", :force => true do |t|
    t.text     "detail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "onboards", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.string   "image_path"
    t.text     "details"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "partners", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url",        :null => false
    t.string   "image_path", :null => false
    t.text     "details",    :null => false
  end

  create_table "pledges", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "supermarkets", :force => true do |t|
    t.text     "name"
    t.text     "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_path",       :null => false
    t.text     "email_to_person",  :null => false
    t.text     "email_to_address", :null => false
  end

  create_table "supporter_emails", :id => false, :force => true do |t|
    t.integer "supporter_id",   :null => false
    t.integer "email_id",       :null => false
    t.date    "commit_date",    :null => false
    t.date    "completed_date"
  end

  create_table "supporters", :force => true do |t|
    t.string   "name"
    t.integer  "postcode"
    t.boolean  "accept_more_info"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",            :default => "fake@wipeitout.com.au", :null => false
    t.boolean  "unsubscribed",     :default => false
  end

  create_table "whattobuys", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.string   "image_path"
    t.text     "details"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
