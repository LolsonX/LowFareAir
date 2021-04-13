class FlightAvailabilitiesController < ApplicationController
  def index
    params.delete_if {|_, v| v.empty?}
    @pagy, @records = pagy(FlightAvailability.all.where(search_params))
  end

  private

  def search_params
    params.permit(:flight_id)
  end
end
