class ItemsController < ApplicationController
  def new
    @item = Item.new
  
  end

  def create
    item_params = params[:item]
    @item = Item.new item_name: item_params["item_name"].downcase.capitalize, list_id: params[:id]
    if @item.save
      redirect_to list_path(params[:id])
    else
      render :new
    end
  end

end