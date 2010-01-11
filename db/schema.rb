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

ActiveRecord::Schema.define(:version => 20100107161731) do

  create_table "aankoops", :force => true do |t|
    t.integer  "product_id"
    t.integer  "klant_id"
    t.float    "prijs"
    t.datetime "datum"
    t.boolean  "betaald"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "commentaars", :force => true do |t|
    t.integer  "product_id"
    t.integer  "klant_id"
    t.text     "text"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "klants", :force => true do |t|
    t.string   "voornaam"
    t.string   "achternaam"
    t.boolean  "geslacht"
    t.date     "geboortedatum"
    t.string   "email"
    t.string   "creditcard"
    t.string   "postcode"
    t.string   "huisnummer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medewerkers", :force => true do |t|
    t.string   "password"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "titel"
    t.string   "prijs"
    t.date     "jaar"
    t.string   "artiest"
    t.string   "genre"
    t.string   "lengte"
    t.string   "coverart"
    t.integer  "album_id"
    t.integer  "tracknr"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
