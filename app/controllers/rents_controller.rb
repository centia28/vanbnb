class RentsController < ApplicationController
  before_action :set_van, only: :create

  def index
  end

  def show
    @rent = Rent.find(params[:id])
    @van  = @rent.van
  end

  def create
    q = params[:rent]
    begin_date = Date.new(q["begin_date(1i)"].to_i, q["begin_date(2i)"].to_i, q["begin_date(3i)"].to_i)
    end_date = Date.new(q["end_date(1i)"].to_i, q["end_date(2i)"].to_i, q["end_date(3i)"].to_i)

    @rent = Rent.new(begin_date: begin_date, end_date: end_date, van: @van, traveler: current_user)
    @rent.total_price = @van.price_per_day * (end_date - begin_date).to_i

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
    params.require(:rent).permit("begin_date(1i)", "begin_date(2i)", "begin_date(3i)", "end_date(1i)", "end_date(2i)", "end_date(3i)")
  end
end
