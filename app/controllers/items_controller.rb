class ItemsController < ApplicationController
  def new
    @item = Item.new
  
  end

  def create
    @list =List.find params[:list_id]
    item_params = params[:item]
    @item = Item.new item_name: item_params["item_name"].downcase.capitalize, list_id: params[:list_id]
    if @item.save
      redirect_to list_path(params[:list_id])
    else
      render :new
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update 
    item_params = params[:item]
    @item = Item.find params[:id]
    if params[:done] == "1"
      @item.update done: true
    else
      @item.update done:false
    end
    @item.update(due_date: item_params[:due_date])
    redirect_to list_path(@item.list_id)
  end
end