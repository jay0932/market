class ShopsController < ApplicationController
  before_action :set_shop, only: [:edit, :update, :show, :destroy]
  def index
    @shops = Shop.all
  end

  def show

  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      redirect_to shops_path
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @shop.update(shop_params)
      redirect_to shops_path
    else
      render :edit
    end
  end

  def destroy
    @shop.destroy
  end

private
  def set_shop
    @shop = Shop.find(params[:id])
  end

  def shop_params
    params.require(:shop).permit(:user_id, :city, :market_name, :address, :rent_start_datetime, :rent_end_datetime, :rent_prices, :rent_status, :shop_tool, :shop_note)
  end

end