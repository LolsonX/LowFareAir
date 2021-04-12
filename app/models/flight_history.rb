# == Schema Information
#
# Table name: flight_histories
#
#  id           :integer          not null, primary key
#  begin_date   :string
#  dest_airport :string
#  orig_airport :string
#  seat_class   :string
#  username     :string
#  flight_id    :string
#
class FlightHistory < ApplicationRecord
  def flight
    Flight.find_by flight_id: flight_id
  end
end
