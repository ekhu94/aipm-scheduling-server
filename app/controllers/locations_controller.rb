class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :update, :destroy]

  def index
    locations = Location.all
    render json: locations
  end

  def show
  end

  def create
    location = Location.new(location_params)
    if location.save
      render json: location
    else
      render nothing: true, status: :bad_request
    end
  end

  def update
    if location.update(location_params)
      render json: location
    else
      render nothing: true, status: :bad_request
    end
  end

  def destroy
    location.destroy
    render json: { message: 'Action Complete' }
  end

  private

  def set_location
    location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit(:name, :city)
  end
end
