class ItemsController < ApplicationController

  def verify_age
  end

  def show
    @items=Item.find_by(id: params[:id])
  end


  def change
    @items= Item.find_by(id: params[:id])
  end

  def admin
  end

  def create
    @items=Item.new(name: params[:name], price: params[:price], image_name: params[:image_name], explanation: params[:explanation])
    if @items.save
      redirect_to("/admin/index")
    else
      render("/items/admin")
    end
  end

  def index
    @items= Item.all
  end

  def edit
    @items= Item.find_by(id: params[:id])
  end

  def update
    @items= Item.find_by(id: params[:id])
    @items.name= params[:name]
    @items.price= params[:price]
    @items.image_name= params[:image_name]
    @items.explanation= params[:explanation]
    if @items.save
      redirect_to("/items/#{@items.id}")
    else
      render("items/#{@items.id}/edit")
    end
  end

  def destroy
    @items= Item.find_by(id: params[:id])
    @items.destroy
    redirect_to("/admin/index")
  end


end
