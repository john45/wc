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

ActiveRecord::Schema.define(version: 20_170_906_083_517) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'cities', force: :cascade do |t|
    t.string 'name'
    t.bigint 'user_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['user_id'], name: 'index_cities_on_user_id'
  end

  create_table 'recepts', force: :cascade do |t|
    t.string 'link'
    t.string 'form_param'
    t.string 'current'
    t.string 'max'
    t.string 'min'
    t.string 'probability'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'id_or_name'
    t.string 'name_input_field'
  end

  create_table 'user_forecasts', force: :cascade do |t|
    t.bigint 'user_id'
    t.bigint 'recept_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['recept_id'], name: 'index_user_forecasts_on_recept_id'
    t.index ['user_id'], name: 'index_user_forecasts_on_user_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  add_foreign_key 'cities', 'users'
  add_foreign_key 'user_forecasts', 'recepts'
  add_foreign_key 'user_forecasts', 'users'
end
