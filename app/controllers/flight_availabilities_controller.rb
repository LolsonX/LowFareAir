class FlightAvailabilitiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_flight_availability, only: [:show, :edit, :update, :destroy]

  # GET /flight_availabilities
  # GET /flight_availabilities.json
  def index
    if search_params.empty?
      @pagy, @flights = pagy(FlightAvailability.all)
    else
       @pagy, @flights = pagy(FlightAvailability.joins(:flight).where(
           flights: {orig_airport: search_params[:from],
                    dest_airport: search_params[:to]},
           flight_date: search_params[:date]))
    end
    @cities = City.all
  end

  # GET /flight_availabilities/1
  # GET /flight_availabilities/1.json
  def show
  end

  # GET /flight_availabilities/new
  def new
    @flight_availability = FlightAvailability.new
  end

  # GET /flight_availabilities/1/edit
  def edit
  end

  # POST /flight_availabilities
  # POST /flight_availabilities.json
  def create
    @flight_availability = FlightAvailability.new(flight_availability_params)

    respond_to do |format|
      if @flight_availability.save
        format.html { redirect_to @flight_availability, notice: 'Flight availability was successfully created.' }
        format.json { render :show, status: :created, location: @flight_availability }
      else
        format.html { render :new }
        format.json { render json: @flight_availability.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flight_availabilities/1
  # PATCH/PUT /flight_availabilities/1.json
  def update
    respond_to do |format|
      if @flight_availability.update(flight_availability_params)
        format.html { redirect_to @flight_availability, notice: 'Flight availability was successfully updated.' }
        format.json { render :show, status: :ok, location: @flight_availability }
      else
        format.html { render :edit }
        format.json { render json: @flight_availability.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flight_availabilities/1
  # DELETE /flight_availabilities/1.json
  def destroy
    @flight_availability.destroy
    respond_to do |format|
      format.html { redirect_to flight_availabilities_url, notice: 'Flight availability was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flight_availability
      @flight_availability = FlightAvailability.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def flight_availability_params
      params.require(:flight_availability).permit(:flight_id, :segment_number, :flight_date, :economy_seats_taken, :business_seats_taken, :firstclass_seats_taken)
    end

  def search_params
    params.permit(:from, :to, :date, :commit)
  end
end
