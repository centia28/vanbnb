class VansController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    if params[:search]
      q = params[:search]
      begin_date = !q[:begin_date].empty? && Date.valid_date?(q[:begin_date]) ? Date.parse(q[:begin_date]) : Date.today
      end_date = !q[:end_date].empty? && Date.valid_date?(q[:end_date]) ? Date.parse(q[:end_date]) : Date.today

      @vans = Van.select { |van| van.available?(begin_date: begin_date, end_date: end_date) }
    else
      @vans = Van.all
    end
  end

  def show
  end
end
