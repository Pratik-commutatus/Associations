class CreateHttprequests < ActiveRecord::Migration[6.0]
  def change
    create_table :httprequests do |t|

      t.timestamps
    end
  end
end
