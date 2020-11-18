class FlightHistoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_flight_history, only: [:show, :edit, :update, :destroy]

  # GET /flight_histories
  # GET /flight_histories.json
  def index
    @flight_histories = FlightHistory.where username: current_user.email
  end

  # GET /flight_histories/1
  # GET /flight_histories/1.json
  def show
  end

  # GET /flight_histories/new
  def new
    @flight_history = FlightHistory.new
  end

  # GET /flight_histories/1/edit
  def edit
  end

  # POST /flight_histories
  # POST /flight_histories.json
  def create
    puts flight_history_params
    @flight_history = FlightHistory.new(flight_history_params)
    @flight_availability = FlightAvailability.find_by id: flight_availability_params[:flight_avail_id]
    case @flight_history.seat_class
    when "Economy"
      @flight_availability.economy_seats_taken = @flight_availability.economy_seats_taken+1
    when "Buisness"
      @flight_availability.business_seats_taken = @flight_availability.business_seats_taken+1
    when "First"
      @flight_availability.firstclass_seats_taken = @flight_availability.firstclass_seats_taken+1
    end
    respond_to do |format|
      if @flight_history.save
        @flight_availability.save
        format.html { redirect_to @flight_history, notice: 'Flight history was successfully created.' }
        format.json { render :show, status: :created, location: @flight_history }
      else
        format.html { render :new }
        format.json { render json: @flight_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flight_histories/1
  # PATCH/PUT /flight_histories/1.json
  def update
    respond_to do |format|
      if @flight_history.update(flight_history_params)
        format.html { redirect_to @flight_history, notice: 'Flight history was successfully updated.' }
        format.json { render :show, status: :ok, location: @flight_history }
      else
        format.html { render :edit }
        format.json { render json: @flight_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flight_histories/1
  # DELETE /flight_histories/1.json
  def destroy
    @flight_history.destroy
    respond_to do |format|
      format.html { redirect_to flight_histories_url, notice: 'Flight history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flight_history
      @flight_history = FlightHistory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def flight_history_params
      params.require(:flight_history).permit(:username, :flight_id, :orig_airport, :dest_airport, :begin_date, :seat_class)
    end

  def flight_availability_params
    params.permit(:flight_avail_id)
  end
end
