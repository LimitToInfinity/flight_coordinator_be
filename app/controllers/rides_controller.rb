class RidesController < ApplicationController
  before_action :find_ride, only: %i[show update destroy]

  def index
    @rides = Ride.all
    render json: RideSerializer.new(@rides)
  end

  def show
    render json: RideSerializer.new(@ride)
  end

  def create
    @ride = Ride.new ride_params

    if @ride.valid?
      @ride.save
      render json: RideSerializer.new(@ride), status: :created
    else
      render json: @ride.errors, status: :unprocessable_entity
    end
  end

  def update
    if @ride.update ride_params
      render json: RideSerializer.new(@ride)
    else
      render json: @ride.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @ride.destroy
  end

  private

  def find_ride
    @ride = Ride.find params[:id]
  end

  def ride_params
    params.require(:ride).permit(
      :driver_id,
      :traveler_id,
      :flight_id,
      shuttle_attributes: %i[datetime datetime_string]
    )
  end
end
