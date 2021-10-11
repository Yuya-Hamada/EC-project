class CartItemController < ApplicationController
  def index
  end

  def add
    session[:cart] ||= Cart.new
    session[:cart].add(Item.find(params[:id]))
    @cart=session[:cart]
    render("cart/index")
  end



end
