require 'test_helper'

class FlightHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flight_history = flight_histories(:one)
  end

  test "should get index" do
    get flight_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_flight_history_url
    assert_response :success
  end

  test "should create flight_history" do
    assert_difference('FlightHistory.count') do
      post flight_histories_url, params: { flight_history: { begin_date: @flight_history.begin_date, class: @flight_history.class, dest_airport: @flight_history.dest_airport, flight_id: @flight_history.flight_id, orig_airport: @flight_history.orig_airport, username: @flight_history.username } }
    end

    assert_redirected_to flight_history_url(FlightHistory.last)
  end

  test "should show flight_history" do
    get flight_history_url(@flight_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_flight_history_url(@flight_history)
    assert_response :success
  end

  test "should update flight_history" do
    patch flight_history_url(@flight_history), params: { flight_history: { begin_date: @flight_history.begin_date, class: @flight_history.class, dest_airport: @flight_history.dest_airport, flight_id: @flight_history.flight_id, orig_airport: @flight_history.orig_airport, username: @flight_history.username } }
    assert_redirected_to flight_history_url(@flight_history)
  end

  test "should destroy flight_history" do
    assert_difference('FlightHistory.count', -1) do
      delete flight_history_url(@flight_history)
    end

    assert_redirected_to flight_histories_url
  end
end
