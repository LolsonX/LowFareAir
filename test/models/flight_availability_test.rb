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
require 'test_helper'

class FlightAvailabilityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
