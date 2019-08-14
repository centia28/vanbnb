class Owner::DashboardsController < ApplicationController
  def show
    @vans = current_user.vans
    @rents = Rent.select { |rent| rent.van.owner == current_user }
  end
end
