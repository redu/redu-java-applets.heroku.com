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

ActiveRecord::Schema.define(:version => 20121126204121) do

  create_table "applets", :force => true do |t|
    t.string   "title",        :limit => 500
    t.text     "content"
    t.text     "style"
    t.text     "javascript"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.text     "objective"
    t.text     "abstract"
    t.text     "curriculum"
    t.string   "theme",        :limit => 500
    t.string   "author",       :limit => 500
    t.string   "language",     :limit => 500
    t.string   "country",      :limit => 500
    t.string   "publisher",    :limit => 500
    t.text     "description"
    t.string   "rightsholder", :limit => 500
    t.string   "submiter",     :limit => 500
    t.string   "address",      :limit => 500
    t.string   "license",      :limit => 500
    t.string   "uri",          :limit => 500
    t.string   "other_links",  :limit => 500
    t.string   "applet_type"
    t.string   "direct_url"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "token"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
