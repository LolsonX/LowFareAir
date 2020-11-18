class CreateFlightAvailabilities < ActiveRecord::Migration[6.0]
  def change
    create_table :flight_availabilities do |t|
      t.string :flight_id, index:true, column: :flight_id, foreign_key: true
      t.integer :segment_number
      t.date :flight_date
      t.integer :economy_seats_taken
      t.integer :business_seats_taken
      t.integer :firstclass_seats_taken

    end
  end
end
