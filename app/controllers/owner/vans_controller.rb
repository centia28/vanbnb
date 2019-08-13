class Owner::VansController < ApplicationController
  def new
    @van = Van.new
  end

  def create
    cocktail = Cocktail.new(cocktail_params)
    cocktail.save

    redirect_to cocktails_path
  end
end
