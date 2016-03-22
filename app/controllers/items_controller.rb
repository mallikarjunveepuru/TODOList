class ItemsController < ApplicationController

  before_action :show_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.all.order("created_at DESC")
  end

  def new
    @item = Item.new
  end

  def show
    #private find_item
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
    def item_params
      params.require(:item).permit(:title, :description)
    end

    def show_item
      @item = Item.find(params[:id])
    end


end

#На видео: 24:00 / update, delete