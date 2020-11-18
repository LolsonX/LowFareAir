require "application_system_test_case"

class FlightAvailabilitiesTest < ApplicationSystemTestCase
  setup do
    @flight_availability = flight_availabilities(:one)
  end

  test "visiting the index" do
    visit flight_availabilities_url
    assert_selector "h1", text: "Flight Availabilities"
  end

  test "creating a Flight availability" do
    visit flight_availabilities_url
    click_on "New Flight Availability"

    fill_in "Business seats taken", with: @flight_availability.business_seats_taken
    fill_in "Economy seats taken", with: @flight_availability.economy_seats_taken
    fill_in "Firstclass seats taken", with: @flight_availability.firstclass_seats_taken
    fill_in "Flight date", with: @flight_availability.flight_date
    fill_in "Flight", with: @flight_availability.flight_id
    fill_in "Segment number", with: @flight_availability.segment_number
    click_on "Create Flight availability"

    assert_text "Flight availability was successfully created"
    click_on "Back"
  end

  test "updating a Flight availability" do
    visit flight_availabilities_url
    click_on "Edit", match: :first

    fill_in "Business seats taken", with: @flight_availability.business_seats_taken
    fill_in "Economy seats taken", with: @flight_availability.economy_seats_taken
    fill_in "Firstclass seats taken", with: @flight_availability.firstclass_seats_taken
    fill_in "Flight date", with: @flight_availability.flight_date
    fill_in "Flight", with: @flight_availability.flight_id
    fill_in "Segment number", with: @flight_availability.segment_number
    click_on "Update Flight availability"

    assert_text "Flight availability was successfully updated"
    click_on "Back"
  end

  test "destroying a Flight availability" do
    visit flight_availabilities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Flight availability was successfully destroyed"
  end
end
