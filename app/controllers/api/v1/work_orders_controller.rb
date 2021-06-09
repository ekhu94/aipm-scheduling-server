class Api::V1::WorkOrdersController < ApplicationController
  before_action :set_work_order, only: [:show, :update, :destroy]

  def index
    work_orders = WorkOrder.all
    render json: work_orders
  end

  def show
  end

  def create
    work_order = WorkOrder.new(work_order_params)
    if work_order.save
      render json: work_order
    else
      render nothing: true, status: :bad_request
    end
  end

  def update
    if work_order.update(work_order_params)
      render json: work_order
    else
      render nothing: true, status: :bad_request
    end
  end

  def destroy
    work_order.destroy
    render json: { message: 'Action Complete' }
  end

  private

  def set_work_order
    work_order = WorkOrder.find(params[:id])
  end

  def work_order_params
    params.require(:work_order).permit(:time, :duration, :price, :technician_id, :location_id)
  end
end
