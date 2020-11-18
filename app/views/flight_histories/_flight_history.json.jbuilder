json.extract! flight_history, :id, :username, :flight_id, :orig_airport, :dest_airport, :begin_date, :class, :created_at, :updated_at
json.url flight_history_url(flight_history, format: :json)
