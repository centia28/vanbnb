class VansController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @vans = Van.all
  end

  def show
  end
end
