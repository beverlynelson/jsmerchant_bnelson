class OrderItemsController < ApplicationController
  before_filter :load_order
  
  def create
    if @order.add_product(params[:product_id])
      redirect_to @order, :notice => "Successfully created order item."
    else
      render :action => 'new'
    end
  end
  def index
    @order_item = OrderItem.all
  end
  def show
      @order_item = OrderItem.find(params[:id])
    end

  def edit
    @order_item = OrderItem.find(params[:id])
  end

  def update
    @order_item = OrderItem.find(params[:id])
    if @order_item.update_attributes(params[:order_item])
      redirect_to @order_item, :notice  => "Successfully updated order item."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @order_item = OrderItem.find(params[:id])
    @order_item.destroy
    redirect_to orders_url, :notice => "Successfully destroyed order item."
  end
end
