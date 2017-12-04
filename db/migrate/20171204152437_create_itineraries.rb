class CreateItineraries < ActiveRecord::Migration[5.1]
  def change
    create_table :itineraries do |t|
      t.integer :user_id
      t.string :name
      t.text :description
      t.text :notes
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
