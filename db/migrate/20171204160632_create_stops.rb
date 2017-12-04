class CreateStops < ActiveRecord::Migration[5.1]
  def change
    create_table :stops do |t|
      t.integer :location_id
      t.integer :itinerary_id

      t.timestamps
    end
  end
end
