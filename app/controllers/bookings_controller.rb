class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    params[:passengers].to_i.times do 
      @booking.passengers.build
    end
    @from_airport = find_airport(params[:from_airport])
    @to_airport = find_airport(params[:to_airport])
    @date = params[:date]
  end

  def create
    @booking = Booking.new(booking_params)
    respond_to do |format|
      if @booking.save
        format.html { redirect_to :root, notice: "Booking was successfully created." }
        format.json { render :show, status: :created, location: @flights}
      else
        format.html { render :new, status: :unprocessable_entity, notice: "Unsuccessful"  }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def find_airport(id) 
    airport = Airport.find(id)
    airport.code
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end

end
