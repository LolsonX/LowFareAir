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
require 'test_helper'

class FlightTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
