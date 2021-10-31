class BuildingsController < ApplicationController
  # layout false
  def index
    @all = Building.all
  end

  def new
    @building = Building.new
  end

  def show
    @building = Building.find(params[:id])
  end

  def create
    @building = Building.new(building_params)
    if @building.save
      redirect_to buildings_path
    else
      render("new")
    end
  end

  def edit
  end

  def delete
  end

  private
  def building_params
    params.require(:building).permit(:name,:address,:city)
  end
end
