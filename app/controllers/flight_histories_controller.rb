class FlightHistoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @pagy, @records = pagy(FlightHistory.where(username: current_user.email))
  end

  def new
  end

  def create
    av = FlightAvailability.find(flight_histories_params[:flight_av])
    #  id           :integer          not null, primary key
    #  begin_date   :string
    #  dest_airport :string
    #  orig_airport :string
    #  seat_class   :string
    #  username     :string
    #  flight_id    :string
    record = FlightHistory.new(begin_date: av.flight_date,
                               dest_airport: av.flight.dest_airport,
                               orig_airport: av.flight.orig_airport,
                               seat_class: flight_histories_params[:seat_class],
                               username: current_user.email,
                               flight_id: av.flight_id)
    if record.save
      if record.seat_class == 'Economy'
        av.update(economy_seats_taken: av.economy_seats_taken+1)
      elsif record.seat_class == 'Business'
        av.update(business_seats_taken: av.business_seats_taken+1)
      else
        av.update(firstclass_seats_taken: av.firstclass_seats_taken+1)
      end
      # Send email
      flash[:success] = 'Successfully booked a ticket'
      TicketConfirmationMailer.with(flight_history: record)
                              .ticket_confirmation
                              .deliver_later
      redirect_to root_path and return
    end
    flash.now[:error] = 'Failed to book a ticket'
    render :new
  end

  private

  def flight_histories_params
    params.permit(:seat_class, :flight_av)
  end
end
