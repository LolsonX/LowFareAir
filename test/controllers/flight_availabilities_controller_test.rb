require 'test_helper'

class FlightAvailabilitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get flight_availabilities_index_url
    assert_response :success
  end

end
