require 'test_helper'

class FlightHistoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get flight_histories_index_url
    assert_response :success
  end

  test "should get new" do
    get flight_histories_new_url
    assert_response :success
  end

  test "should get create" do
    get flight_histories_create_url
    assert_response :success
  end

end
