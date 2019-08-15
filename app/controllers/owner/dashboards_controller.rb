class Owner::DashboardsController < ApplicationController
  def show
    @vans = current_user.vans
    @rents = current_user.owner_rents.order("created_at DESC")
    @pending = @rents.where(state: 'pending')
    @accepted = @rents.where(state: 'accepted')
    @declined = @rents.where(state: 'declined')
  end
end
