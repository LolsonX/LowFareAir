# == Schema Information
#
# Table name: flight_availabilities
#
#  id                     :integer          not null, primary key
#  business_seats_taken   :integer
#  economy_seats_taken    :integer
#  firstclass_seats_taken :integer
#  flight_date            :date
#  segment_number         :integer
#  flight_id              :string
#
# Indexes
#
#  index_flight_availabilities_on_flight_id  (flight_id)
#
class FlightAvailability < ApplicationRecord
  belongs_to :flight, primary_key: :flight_id
  def flight
    Flight.find_by flight_id: flight_id
  end

  def origin_city
    flight.origin_city
  end

  def destination_city
    flight.destination_city
  end
end
