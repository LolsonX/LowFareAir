require "application_system_test_case"

class FlightsTest < ApplicationSystemTestCase
  setup do
    @flight = flights(:one)
  end

  test "visiting the index" do
    visit flights_url
    assert_selector "h1", text: "Flights"
  end

  test "creating a Flight" do
    visit flights_url
    click_on "New Flight"

    fill_in "Aircraft", with: @flight.aircraft
    fill_in "Arrive time", with: @flight.arrive_time
    fill_in "Depart time", with: @flight.depart_time
    fill_in "Dest airport", with: @flight.dest_airport
    fill_in "Flight", with: @flight.flight_id
    fill_in "Flying time", with: @flight.flying_time
    fill_in "Miles", with: @flight.miles
    fill_in "Orig airport", with: @flight.orig_airport
    fill_in "Segment number", with: @flight.segment_number
    click_on "Create Flight"

    assert_text "Flight was successfully created"
    click_on "Back"
  end

  test "updating a Flight" do
    visit flights_url
    click_on "Edit", match: :first

    fill_in "Aircraft", with: @flight.aircraft
    fill_in "Arrive time", with: @flight.arrive_time
    fill_in "Depart time", with: @flight.depart_time
    fill_in "Dest airport", with: @flight.dest_airport
    fill_in "Flight", with: @flight.flight_id
    fill_in "Flying time", with: @flight.flying_time
    fill_in "Miles", with: @flight.miles
    fill_in "Orig airport", with: @flight.orig_airport
    fill_in "Segment number", with: @flight.segment_number
    click_on "Update Flight"

    assert_text "Flight was successfully updated"
    click_on "Back"
  end

  test "destroying a Flight" do
    visit flights_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Flight was successfully destroyed"
  end
end
