require "application_system_test_case"

class FlightHistoriesTest < ApplicationSystemTestCase
  setup do
    @flight_history = flight_histories(:one)
  end

  test "visiting the index" do
    visit flight_histories_url
    assert_selector "h1", text: "Flight Histories"
  end

  test "creating a Flight history" do
    visit flight_histories_url
    click_on "New Flight History"

    fill_in "Begin date", with: @flight_history.begin_date
    fill_in "Class", with: @flight_history.class
    fill_in "Dest airport", with: @flight_history.dest_airport
    fill_in "Flight", with: @flight_history.flight_id
    fill_in "Orig airport", with: @flight_history.orig_airport
    fill_in "Username", with: @flight_history.username
    click_on "Create Flight history"

    assert_text "Flight history was successfully created"
    click_on "Back"
  end

  test "updating a Flight history" do
    visit flight_histories_url
    click_on "Edit", match: :first

    fill_in "Begin date", with: @flight_history.begin_date
    fill_in "Class", with: @flight_history.class
    fill_in "Dest airport", with: @flight_history.dest_airport
    fill_in "Flight", with: @flight_history.flight_id
    fill_in "Orig airport", with: @flight_history.orig_airport
    fill_in "Username", with: @flight_history.username
    click_on "Update Flight history"

    assert_text "Flight history was successfully updated"
    click_on "Back"
  end

  test "destroying a Flight history" do
    visit flight_histories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Flight history was successfully destroyed"
  end
end
