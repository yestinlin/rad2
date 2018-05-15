class AddUseIdToSubmits < ActiveRecord::Migration[5.0]
  def change
    add_column :submits, :user_id, :integer
    add_column :submits, :submit_id, :integer
  end
end
