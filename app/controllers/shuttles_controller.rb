class ShuttlesController < ApplicationController
  before_action :find_shuttle, only: %i[show update destroy]

  def index
    @shuttles = Shuttle.all
    render json: ShuttleSerializer.new(@shuttles)
  end

  def show
    render json: ShuttleSerializer.new(@shuttle)
  end

  def create
    @shuttle = Shuttle.new shuttle_params

    if @shuttle.valid?
      @shuttle.save
      render json: ShuttleSerializer.new(@shuttle), status: :created
    else
      render json: @shuttle.errors, status: :unprocessable_entity
    end
  end

  def update
    if @shuttle.update shuttle_params
      render json: ShuttleSerializer.new(@shuttle)
    else
      render json: @shuttle.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @shuttle.destroy
  end

  private

  def find_shuttle
    @shuttle = Shuttle.find params[:id]
  end

  def shuttle_params
    params.require(:shuttle).permit :datetime, :datetime_string
  end
end
