class TechniciansController < ApplicationController
  before_action :set_technician, only: [:show, :update, :destroy]

  def index
    technicians = Technician.all
    render json: technicians
  end

  def show
  end

  def create
    technician = Technician.new(technician_params)
    if technician.save
      render json: technician
    else
      render nothing: true, status: :bad_request
    end
  end

  def update
    if technician.update(technician_params)
      render json: technician
    else
      render nothing: true, status: :bad_request
    end
  end

  def destroy
    technician.destroy
    render json: { message: 'Action Complete' }
  end

  private

  def set_technician
    technician = Technician.find(params[:id])
  end

  def technician_params
    params.require(:technician).permit(:name)
  end
end
