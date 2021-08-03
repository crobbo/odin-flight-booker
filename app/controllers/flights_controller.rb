class FlightsController < ApplicationController



  def index
    @flights = Flight.all
    @airports = Airport.all
    if params[:to_code] 
      find_flights
    else
      return nil
    end
  end

  private

  def find_flights
    airport_from_id = Airport.where(code: params[:from_code])[0][:id]
    airport_to_id = Airport.where(code: params[:to_code])[0][:id]
    @flights_match = Flight.where(from_airport_id: airport_from_id, to_airport_id: airport_to_id)

    @same_day_flights = []

    @flights_match.each do |flight|
      flight[:scheduled_for].strftime("%Y/%m/%d")
      @same_day_flights << flight
    end
  end

  def flight_params
    params.requrie(:flight).permit(:scheduled_for, :duration, :to_airport_id, :from_airport_id)
  end
end