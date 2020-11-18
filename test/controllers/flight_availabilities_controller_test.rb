require 'test_helper'

class FlightAvailabilitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flight_availability = flight_availabilities(:one)
  end

  test "should get index" do
    get flight_availabilities_url
    assert_response :success
  end

  test "should get new" do
    get new_flight_availability_url
    assert_response :success
  end

  test "should create flight_availability" do
    assert_difference('FlightAvailability.count') do
      post flight_availabilities_url, params: { flight_availability: { business_seats_taken: @flight_availability.business_seats_taken, economy_seats_taken: @flight_availability.economy_seats_taken, firstclass_seats_taken: @flight_availability.firstclass_seats_taken, flight_date: @flight_availability.flight_date, flight_id: @flight_availability.flight_id, segment_number: @flight_availability.segment_number } }
    end

    assert_redirected_to flight_availability_url(FlightAvailability.last)
  end

  test "should show flight_availability" do
    get flight_availability_url(@flight_availability)
    assert_response :success
  end

  test "should get edit" do
    get edit_flight_availability_url(@flight_availability)
    assert_response :success
  end

  test "should update flight_availability" do
    patch flight_availability_url(@flight_availability), params: { flight_availability: { business_seats_taken: @flight_availability.business_seats_taken, economy_seats_taken: @flight_availability.economy_seats_taken, firstclass_seats_taken: @flight_availability.firstclass_seats_taken, flight_date: @flight_availability.flight_date, flight_id: @flight_availability.flight_id, segment_number: @flight_availability.segment_number } }
    assert_redirected_to flight_availability_url(@flight_availability)
  end

  test "should destroy flight_availability" do
    assert_difference('FlightAvailability.count', -1) do
      delete flight_availability_url(@flight_availability)
    end

    assert_redirected_to flight_availabilities_url
  end
end
