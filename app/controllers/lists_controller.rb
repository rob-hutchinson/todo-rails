class ListsController < ApplicationController
before_action :authenticate_user!
  
  def new
    @list = List.new
  end

  def create
    list_params = params[:list]
    @list = current_user.lists.new list_name: list_params["list_name"].downcase.capitalize
    if @list.save
      flash[:notice] = "Nice list bro!"
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def show
    @list = List.find params[:id]
    @items = @list.items
  end

  def index
    @lists = current_user.lists.all
  end
end