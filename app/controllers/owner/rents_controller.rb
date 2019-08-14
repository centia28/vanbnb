class Owner::RentsController < ApplicationController
  before_action :set_rent

  def accept
    @rent.update(state: "accepted")

    redirect_to owner_dashboard_path
  end

  def decline
    @rent.update(state: "declined")
    
    redirect_to owner_dashboard_path
  end

  private

  def set_rent
    @rent = Rent.find(params[:id])
  end
end