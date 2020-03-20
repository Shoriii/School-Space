class FacilitiesController < ApplicationController
  def index
    @catefories = Category.all
  	 if into = params[:category_name]
     @facilities = Category.find_by(category_name: params[:category_name]).facilities.page(params[:page]).reverse_order
    else
     @facilities = Facility.all
     @facilities = Facility.page(params[:page]).reverse_order
     end
  end
  def show
     @facility = Facility.find(params[:id])
  end
  def calendar
      @events = Event.where(facility_id: params[:facility_id])
      @facility = Event.where(facility_id: params[:facility_id])
  end
end
