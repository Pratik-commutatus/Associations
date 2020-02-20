class AddEmployeeRefToAccount < ActiveRecord::Migration[6.0]
  def change
    add_reference :accounts, :employee, null: false, foreign_key: true
  end
end
