class Api::V1::StopsController < ApplicationController

  def index
    @stops = Stop.all
      render json: @stops
  end

  def create
    @stop = Stop.new(stop_params)
      if @stop.save
        render json: @stop
      else
        render json: @stop.errors, status: :unprocessable_entity
      end
  end


  private

  def stop_params
    params.require(:stop).permit(:location_id, :itinerary_id)
  end
end
