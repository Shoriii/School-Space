class Admins::SubFacilitiesController < ApplicationController
  def new
    @sub_facility = SubFacility.new
  end
  def create
    @sub_facility = SubFacility.new(sub_facility_params)
    if @sub_facility.save
      redirect_to admins_sub_facilities_path
    else
      render 'new'
    end
  end
  def index
    @sub_facilities = SubFacility.all
  end
  def show
    @sub_facility = SubFacility.find(params[:id])
  end
  def edit
    @sub_facility = SubFacility.find(params[:id])
  end
  def update
    @sub_facility = SubFacility.find(params[:id])
    if @sub_facility.update(sub_facility_params)
      redirect_to admins_sub_facility_path(@sub_facility.id)
    else
      render 'edit'
    end
  end
  private
  def sub_facility_params
    params.require(:sub_facility).permit(:facility_id, :category_id, :sub_name, :sub_image, :body, :sub_number)
  end
end