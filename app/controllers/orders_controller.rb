class OrdersController < ApplicationController
  before_action :set_order, only: [:edit, :update, :show, :destroy]
  def index
    @orders = Order.all
  end

  def show

  end

  def new
    @order = Order.new
  end

  def create
    @user = 2
    @order = Order.new(order_params)

    if @order.save
      redirect_to orders_path
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @order.update(order_params)
      redirect_to orders_path
    else
      render :edit
    end
  end

  def destroy
    @order.destroy
  end

private
  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:buyer_id, :status, :order_time, :shop_id )
  end

end