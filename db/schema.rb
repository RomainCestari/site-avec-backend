ActiveRecord::Schema.define(version: 2018_07_30_105501) do

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
