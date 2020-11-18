json.extract! flight, :id, :flight_id, :segment_number, :orig_airport, :depart_time, :dest_airport, :arrive_time, :flying_time, :miles, :aircraft, :created_at, :updated_at
json.url flight_url(flight, format: :json)
