class AddColToAjaxform < ActiveRecord::Migration[6.0]
  def change
    add_column :ajaxforms, :name, :string
    add_column :ajaxforms, :age, :integer
  end
end
