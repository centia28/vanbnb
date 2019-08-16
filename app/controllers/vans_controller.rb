class VansController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @vans = Van.all
    return @vans unless params[:search]

    q = params[:search]

    if q[:end_date] != '' && q[:end_date] != ""
      @vans = Van.select do |van|
        van.available?(end_date: Date.parse(q[:end_date]), begin_date: Date.parse(q[:begin_date]))
      end
    else
      @vans = Van.all
    end
  end

  def show
    @van = Van.find(params[:id])
    @rent = Rent.new
    @unavailable_dates = unavailable_dates(@van.rents)
  end

  private

  def unavailable_dates(rents)
    unavailable_dates = rents.map do |rent|
      {
        from: rent.begin_date,
        to: rent.end_date
      }
    end

    return unavailable_dates
  end
end
