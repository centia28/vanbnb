class VansController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    if params[:search]
      q = params[:search]

      @vans = Van.select { |van| van.available?(end_date: Date.parse(q[:end_date]), begin_date: Date.parse(q[:begin_date])) }
    else
      @vans = Van.all
    end
  end

  def show
    @van = Van.find(params[:id])
    @rent = Rent.new
    @unavailable_dates = @van.rents.map do |rent|
      {
        from: rent.begin_date,
        to: rent.end_date
      }
    end
  end
end
