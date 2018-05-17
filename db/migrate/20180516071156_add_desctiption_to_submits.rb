class AddDesctiptionToSubmits < ActiveRecord::Migration[5.0]
  def change
    add_column :submits, :description, :text
  end
end
