class ItemsController < ApplicationController

  def index
    @items = item_type.all
  end

  def show
    @item = item_type.find(params[:id])
  end
  
  def new
    @item = item_type.new
  end

  def edit
    @item = item_type.find(params[:id])
  end

  def create
    @item = item_type.new(params[params[:type].downcase])
    if @item.save
        redirect_to @item.class, notice: 'Item was successfully created.'
    else
        render action: "new"
    end
  end

  def update
    @item = item_type.find(params[:id])

    if @item.update_attributes(params[params[:type].downcase])
      redirect_to @item.class, notice: 'Item was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @item = item_type.find(params[:id])
    @item.destroy

    redirect_to @item.class
  end


  def item_type
    params[:type].constantize
  end
end
