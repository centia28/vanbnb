class Owner::VansController < ApplicationController
  def new
    @van = Van.new
  end

  def create
    van = Van.new(vans_params)
    van.owner = current_user
    van.save

    redirect_to vans_path
  end

  private

  def vans_params
    params.require(:van).permit(:title, :description, :price_per_day, :model, :brand, :address, :picture)
  end
end
