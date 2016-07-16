class ItemsController < ApplicationController
  before_action :set_item, only: [:create, :show, :update, :destroy]

 def index
   @items = Item.all
   render json: @items
 end

 def create
   @item = Item.new(item_params)
     if @item.save
       render json: @item, status: :created, location: @item
     else
       render json: @item.errors, status: :unprocessable_entity
   end
 end

 def update
    @item = Item.find(params[:id])
     if @item.update(item_params)
       render json: @item
     else
       render json: @item.errors
     end
  end

  def edit
    @item = Item.find(params[:id])
  end

 def destroy
   @item = Item.find(params[:id])
   @item.destroy
   head :no_content
 end

private

 def set_item
   @item = Item.find(params[:id])
 end

 def item_params
   params.require(:item).permit(:name, :availability)
 end
end
