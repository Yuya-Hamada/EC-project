class OrderDetailsController < ApplicationController
  def index
    set_current_user
    @order= Order.find_by(user_id:@current_user.id)
    @cart=Cart.where(user_id: @current_user)
    @item_ids=[]
    @cart.each do|cart|
    @item_ids<<cart.item_id
    @items=Item.where(id: @item_ids)
  end
  end

  def create
    set_current_user
    @price=0
    params[:item_ids].each do|item_id|
      @item=Item.find_by(id:item_id)
      @price += @item.price
    end

    @order=Order.new(user_id: @current_user.id, price: @price)
    @order.save

    params[:item_ids].each do|item_id|
      @quantity= params[item_id]
      @order_detail=OrderDetail.new(item_id: item_id, order_id: @order.id, quantity: @quantity)
      @order_detail.save

    end
    redirect_to("/order_details/index")
  end
end 
