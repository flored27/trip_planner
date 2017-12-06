class Api::V1::ItinerariesController < ApplicationController

  before_action :set_itinerary, only: [:show, :update, :destroy]
  # GET /itineraries
  def index
    @itineraries = Itinerary.all
    render json: @itineraries
  end

  # GET itineraries/1
  def show
    render json: @itinerary
  end

  # POST /itineraries
  def create
    @itinerary = Itinerary.new(itinerary_params)
    if @itinerary.save
      render json: @itinerary, status: :created
    else
      render json: @itinerary.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /itineraries/1
  def update
    @itinerary = Itinerary.find(params[:id])
    @itinerary.update(itinerary_params)
    if @itinerary.save
      render json: @itinerary
    else
      render json: @itinerary.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @itinerary.destroy
  end

  private
  def set_itinerary
    @itinerary = Itinerary.find(params[:id])
  end

  def itinerary_params
    params.require(:itinerary).permit(:user_id, :name, :description, :notes, :start_date, :end_date, :avatar)
  end
end
