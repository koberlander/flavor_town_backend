class Api::V1::OrdersController < ApplicationController

  def index
    render json: Order.all
    # includes(:customer_id)
  end

  def create
   order = Order.create!(getFormParams)
   order.flavor_ids = params['order']['flavor_ids']

   render json: order
  end

  def update
    # find the order
    order = Order.find(params[:id])

    # update with user params
    order.update(name: params[:name],
    address: params[:address],
    flavor_ids: params[:flavor_ids])

    render json: order
  end

  def getFormParams
    params.require(:order).permit(:name, :address).merge(customer_id: 1)
  end
end
