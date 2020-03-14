class TripsController < ApplicationController
  def index
    @trips = Trip.all
    render json: @trips
  end


  def show
    @Trip.create(trip_params)
    render json: @trip
  end

  def create
      @trip = Trip.new(trip_params)

    if @trip.save
      render json: @trip, status: :created, location: @trip
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

    

private
 
  def update
     @trip.update(trip_params)
      render json: @trip
    
  end

  def destroy
     Trip.find(params[:id]).destroy  
  end
end

