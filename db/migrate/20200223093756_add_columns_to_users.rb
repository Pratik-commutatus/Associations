class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :duration, :integer
    add_column :users, :weight, :integer
    add_column :users, :email, :string
    add_column :users, :month, :string
    add_column :users, :week, :string
    add_column :users, :search, :string
    add_column :users, :url, :string
  end
end
