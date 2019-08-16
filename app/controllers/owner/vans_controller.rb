class Owner::VansController < ApplicationController
  def new
    @van = Van.new
  end

  def create
    @van = Van.new(vans_params)
    @van.owner = current_user
    if @van.save
      redirect_to owner_dashboard_path
    else
      render :new
    end
  end

  private

  def vans_params
    params.require(:van).permit(:title, :description, :price_per_day, :model, :brand, :address, :picture)
  end
end
