class Removecolid < ActiveRecord::Migration[6.0]
  def self.down
    remove_column :employees, :account_id
end
end
