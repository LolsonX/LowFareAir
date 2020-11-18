# == Schema Information
#
# Table name: flights
#
#  id             :integer          not null, primary key
#  aircraft       :string
#  arrive_time    :time
#  depart_time    :time
#  dest_airport   :string
#  flying_time    :float
#  meal           :string
#  miles          :integer
#  orig_airport   :string
#  segment_number :integer
#  flight_id      :string
#
class Flight < ApplicationRecord
  def origin_city
    City.find_by airport: orig_airport
  end

  def destination_city
    City.find_by airport: dest_airport
  end

  def to_s
    "#{flight_id} from #{origin_city} to #{destination_city}"
  end
end
