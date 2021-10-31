class ApartmentsController < ApplicationController
  layout false
  def index
    @apartments = Apartment.all.order(:building_id)
  end

  def new
    @apartment = Apartment.new
    @buildings = Building.all.order(:id)
  end

  def show
    @apartment = Apartment.find(params[:id])
  end

  def create
    @apartment = Apartment.new(aparment_params)
    if @apartment.save
      redirect_to apartments_path
    else
      render("new")
    end    
  end

  def delete
  end

  private

  def aparment_params
    params.require(:apartment).permit(:number,:building_id)
  end
end
