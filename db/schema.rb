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

ActiveRecord::Schema.define(:version => 20120502191127) do

  create_table "companies", :force => true do |t|
    t.string   "title"
    t.string   "city"
    t.string   "href"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "qualification_id"
  end

  create_table "company_translations", :force => true do |t|
    t.integer  "company_id"
    t.string   "locale"
    t.string   "title"
    t.string   "city"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "company_translations", ["company_id"], :name => "index_company_translations_on_company_id"
  add_index "company_translations", ["locale"], :name => "index_company_translations_on_locale"

  create_table "contacts", :force => true do |t|
    t.string   "nom"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "experience_translations", :force => true do |t|
    t.integer  "experience_id"
    t.string   "locale"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "experience_translations", ["experience_id"], :name => "index_experience_translations_on_experience_id"
  add_index "experience_translations", ["locale"], :name => "index_experience_translations_on_locale"

  create_table "experiences", :force => true do |t|
    t.string   "title"
    t.integer  "company_id"
    t.datetime "dateStart"
    t.datetime "dateEnd"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "experiments", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "post_translations", :force => true do |t|
    t.integer  "post_id"
    t.string   "locale"
    t.string   "name"
    t.text     "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "post_translations", ["locale"], :name => "index_post_translations_on_locale"
  add_index "post_translations", ["post_id"], :name => "index_post_translations_on_post_id"

  create_table "posts", :force => true do |t|
    t.string   "name"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "qualification_translations", :force => true do |t|
    t.integer  "qualification_id"
    t.string   "locale"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "qualification_translations", ["locale"], :name => "index_qualification_translations_on_locale"
  add_index "qualification_translations", ["qualification_id"], :name => "index_ec2fa9c3bcdf6ee0262af05d19afae013b3224c6"

  create_table "qualifications", :force => true do |t|
    t.string   "title"
    t.integer  "company_id"
    t.datetime "dateStart"
    t.datetime "dateEnd"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tag_translations", :force => true do |t|
    t.integer  "tag_id"
    t.string   "locale"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tag_translations", ["locale"], :name => "index_tag_translations_on_locale"
  add_index "tag_translations", ["tag_id"], :name => "index_tag_translations_on_tag_id"

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       :limit => 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "user_sessions", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.text     "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
  end

end
