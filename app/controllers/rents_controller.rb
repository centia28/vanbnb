class RentsController < ApplicationController
  before_action :set_van, only: :create

  def index
    @rents = current_user.rents.order(begin_date: :DESC)
  end

  def show
    @rent    = Rent.find(params[:id])
    @van     = @rent.van
    @van_loc = van.find(params[:id]).geocoded

    @markers = [{lat: @van_loc.latitude, lng: @van_loc.longitude}]
    end

  end

  def create
    @rent = Rent.new(rent_params)
    @rent.van = @van
    @rent.traveler = current_user
    @rent.total_price = @van.price_per_day * (@duration + 1)

    if @rent.save
      redirect_to rent_path(@rent)
    else
      redirect_to van_path(@van)
    end
  end

  private

  def set_van
    @van = Van.find(params[:van_id])
  end

  def rent_params
    @duration = (Date.parse(params[:rent][:end_date]) - Date.parse(params[:rent][:begin_date])).to_i
    params.require(:rent).permit("begin_date", "end_date")
  end
end
