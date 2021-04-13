class FlightsController < ApplicationController
  def index
    params.delete_if {|_, v| v.empty?}
    @pagy, @records = pagy(Flight.all.where(search_params))
  end

  def show
  end

  private

  def search_params
    params.permit(:orig_airport, :dest_airport)
  end
end
