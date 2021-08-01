class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @airports = Airport.all
  end
  
  private 

  def set_flight
    @flight = Flight.find(params[:id])
  end

  def flight_params
    params.requrie(:flight).permit(:scheduled_for, :duration, :to_airport_id, :from_airport_id)
  end
end

