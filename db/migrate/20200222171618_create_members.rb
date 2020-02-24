class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :country
      t.string :age
      t.string :address
      t.string :password
      t.integer :telephone
      t.date :date

      t.timestamps
    end
  end
end
