class AddressesController < ApplicationController

  def index
    @addresses= Address.new
  end

  def create
    set_current_user
    @addresses= Address.new(address_number: params[:address_number], address: params[:address], user_id: @set_current_user)
    @addresses.save
  end
end
