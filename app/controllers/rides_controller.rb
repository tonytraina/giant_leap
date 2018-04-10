class RidesController < ApplicationController

  def index

  end

  def show

  end

  def destroy

  end

  def new

  end

  def create
    ride = Ride.new
    ride.passenger_name = params["passenger_name"]
    ride.origin = params["origin"]
    ride.destination = params["destination"]
    ride.save
  end

  def edit

  end

  def update
    ride = Ride.find_by(id: params["id"])
    if params["driver_id"].present?
      ride.driver_id = params["driver_id"]
    else
      if params["complete"].present?
        ride.complete = true
      end
    end
    ride.driver_id = params["driver_id"]
    ride.save
    redirect_to "/rides"

  end

end
