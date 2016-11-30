class RatesController < ApplicationController
  before_action :set_rate, only: [:edit, :update, :show, :destroy]
  def index
    @rates = Rate.all
  end

  def show

  end

  def new
    @rate = Rate.new
  end

  def create
    @rate = Rate.new(rate_params)
    if @rate.save
      redirect_to rates_path
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @rate.update(rate_params)
      redirect_to rates_path
    else
      render :edit
    end
  end

  def destroy
    @rate.destroy
  end

private
  def set_rate
    @rate = Rate.find(params[:id])
  end

  def rate_params
    params.require(:rate).permit(:user_id, :rate)
  end
end