class VansController < ApplicationController
  def index
    if params[:search]
      query = params[:search]
      begin_date = Date.new(query["begin_date(1i)"].to_i, query["begin_date(2i)"].to_i, query["begin_date(3i)"].to_i)
      end_date = Date.new(query["end_date(1i)"].to_i, query["end_date(2i)"].to_i, query["end_date(3i)"].to_i)
      @vans = Van.all
    else
      @vans = Van.all
    end
  end

  def show
  end
end
