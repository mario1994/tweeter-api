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

ActiveRecord::Schema.define(version: 20170825112400) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tweets", force: :cascade do |t|
    t.string "tweetAuthor"
    t.string "tweetAuthorTag"
    t.integer "tweetTime"
    t.string "tweetText"
    t.string "tweetImageURL"
    t.integer "tweetReply"
    t.integer "tweetForward"
    t.integer "tweetLove"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "firstName"
    t.string "lastName"
    t.string "userName"
    t.string "country"
    t.string "city"
    t.date "dateOfBirth"
    t.string "email"
    t.string "aboutSelf"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "largeUserProfilePicture", default: "https://www.bmw.hr/content/dam/bmw/common/all-models/m-series/x6m/2014/model-card/X6-M-F86_ModelCard.png"
    t.string "smallUserProfilePicture", default: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWJvSufpWSL8GwKt83vrdZ8le_tbA8RdwBAO1EHs-Ats-e9qGux-PZxdM"
  end

end
