class CreateFlightHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :flight_histories do |t|
      t.string :username
      t.string :flight_id
      t.string :orig_airport
      t.string :dest_airport
      t.string :begin_date
      t.string :seat_class

    end
  end
end
