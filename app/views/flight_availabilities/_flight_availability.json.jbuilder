json.extract! flight_availability, :id, :flight_id, :segment_number, :flight_date, :economy_seats_taken, :business_seats_taken, :firstclass_seats_taken, :created_at, :updated_at
json.url flight_availability_url(flight_availability, format: :json)
