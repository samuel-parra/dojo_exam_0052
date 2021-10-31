class BuildingController < ApplicationController
  def index
    @list = Building.all
  end

  def new
  end

  def show
  end
end
