class TicketConfirmationMailer < ApplicationMailer
  def ticket_confirmation()
    @flight_history = params[:flight_history]

    mail(to: @flight_history.username, subject: "You booked a ticket")
  end
end
