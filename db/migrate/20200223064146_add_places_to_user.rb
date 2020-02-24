class AddPlacesToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :places, :text, array: true, default: []
  end
end
