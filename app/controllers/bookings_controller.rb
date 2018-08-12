class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
  end

  def show
    @booking = Booking.find(params[:id])
  end


  def new
    @experience = Experience.find(params[:experience_id])
    @booking = Booking.new
  end

	def create
  	@booking = Booking.new
  	@booking.user = current_user
  	@booking.event = Event.find(params[:event_id])
  	if @booking.save
      BookingMailer.creation_confirmation_company(@booking).deliver_now
      BookingMailer.creation_confirmation(@booking).deliver_now
  		redirect_to booking_path(@booking)
  	else
  		render :new
  	end
	end
    

	private

	# def booking_params
	# 	params.require(:booking).permit()

	# end

end

