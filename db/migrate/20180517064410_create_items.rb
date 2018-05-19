class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
    t.string   "title"
    t.string   "url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.integer  "submit_id"
    t.text     "description"
    t.timestamps 
    end
  end
end
