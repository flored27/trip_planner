class Api::V1::LocationsController < ApplicationController

  before_action :set_location, only: [:show, :update, :destroy]
  # GET /locations
  def index
    @locations = Location.all
    render json: @locations
  end

  # GET locations/1
  def show
    render json: @location
  end

  # POST /location
  def create
    @location = Location.new(location_params)
    if @location.save
      render json: @location
    else
      render json: @location.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /itineraries/1
  def update
    @location = Location.find(params[:id])
    @location.update(location_params)
    if @location.save
      render json: @location
    else
      render json: @location.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @location.destroy
  end

  private
  def set_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:name, :street_address, :city, :state, :country, :postal_code, :description, :avatar)
  end
end
