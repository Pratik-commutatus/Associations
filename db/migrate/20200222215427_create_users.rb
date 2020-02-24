class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :country
      t.string :age
      t.string :address
      t.string :password
      t.integer :telephone
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
