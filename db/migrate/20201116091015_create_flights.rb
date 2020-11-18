class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.string :flight_id
      t.integer :segment_number
      t.string :orig_airport
      t.time :depart_time
      t.string :dest_airport
      t.time :arrive_time
      t.string :meal
      t.float :flying_time
      t.integer :miles
      t.string :aircraft

    end
  end
end
