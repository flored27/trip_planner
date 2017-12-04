class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :street_address
      t.string :city
      t.string :state
      t.string :country
      t.string :postal_code
      t.text :description

      t.timestamps
    end
  end
end
