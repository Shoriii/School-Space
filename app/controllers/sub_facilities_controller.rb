class SubFacilitiesController < ApplicationController
  def index
    @facility = SubFacility.where(facility_id: params[:facility_id])
    if params[:facility_id]
      @sub_facilities = SubFacility.where(facility_id: params[:facility_id])
    else
      @sub_facilities = SubFacility.order(created_at: :desc).all
    end
  end
  def show
      @sub_facility = SubFacility.find(params[:id])
  end
end
