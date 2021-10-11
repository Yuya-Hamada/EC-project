class OrdersController < ApplicationController
  def index

  end

  def update
    @order=Order.find(params[:order_id])
    @order.update(address: params[:address], address_number: params[:address_number])
  end
end
