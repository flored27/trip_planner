class Api::V1::StopsController < ApplicationController

  def index
    @stops = Stop.all
      render json: @stops
  end

  def show
    @stop = Stop.find(params[:id])
    render json: @stop
  end

  def create
    @stop = Stop.new(stop_params)
      if @stop.save
        render json: @stop
      else
        render json: @stop.errors, status: :unprocessable_entity
      end
  end

  def destroy
    @stop = Stop.find(params[:id])
    @stop.destroy
  end

  private

  def stop_params
    params.permit(:location_id, :itinerary_id)
  end
end
