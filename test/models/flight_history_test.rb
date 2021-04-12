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
require 'test_helper'

class FlightHistoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
