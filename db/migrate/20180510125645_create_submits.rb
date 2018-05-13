class CreateSubmits < ActiveRecord::Migration[5.0]
  def change
    create_table :submits do |t|
      t.string :title
      t.string :url

      t.timestamps
    end
    add_index :submits, [:user_id, :created_at]
  end
end
