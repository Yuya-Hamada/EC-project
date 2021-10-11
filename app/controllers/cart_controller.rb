class CartController < ApplicationController
  before_action :login_required

  def index
    set_current_user
    @cart=Cart.where(user_id: @current_user)
    @item_ids=[]
    @cart.each do|cart|
    @item_ids<<cart.item_id
    @items=Item.where(id: @item_ids)

  end
  end

  def login_required
    redirect_to login_url unless set_current_user
  end

  def create
    set_current_user
    @cart=Cart.new(item_id: params[:item_id], user_id: @current_user.id, quantity: params[:quantity] )
    @cart.save
    redirect_to("/cart/index")
  end

end
