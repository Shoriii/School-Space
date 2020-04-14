class Admins::InformationsController < ApplicationController
  def index
    @information = Information.new(facility_id: params[:facility_id])
    @informations = Information.where(facility_id: params[:facility_id]).all
  end
  def create
    @information = Information.new(information_params)
    @facility = Information.where(facility_id: params[:facility_id])
    if @information.save
      redirect_back(fallback_location: root_path)
    else
      render 'index'
    end
  end

  def show
    @information = Information.find(params[:id])
  end

  def edit
    @information = Information.find(params[:id])
  end

  def update
    @information = Information.find(params[:id])
    if @information.update(information_params)
      redirect_to admins_information_facilities_path(@information.facility.id)
    else
      render 'edit'
    end
  end
  def destroy
    @information = Information.find(params[:id])
    if @information.destroy
      redirect_back(fallback_location: root_path)
    else
    	 render action: :destroy
    end
  end
  private
  def information_params
    params.require(:information).permit(:facility_id, :title, :body)
  end
end
