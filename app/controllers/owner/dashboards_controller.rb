class Owner::DashboardsController < ApplicationController
  def show
    @vans = current_user.vans
  end
end
