class ItemsController < ApplicationController


 def index
   @items = Item.all
   render json: @items
 end

 def create
   @item = Item.new(item_params)
     if @item.save
       render json: @item
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



 def item_params
   params.require(:item).permit(:name, :description, :availability, :start_aval, :finish_aval)
 end
end
