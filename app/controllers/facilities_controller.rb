class FacilitiesController < ApplicationController
  def index
    @categories = Category.all
  	 if into = params[:category_name]
     @facilities = Category.find_by(category_name: params[:category_name]).facilities.page(params[:page]).reverse_order
    else
     @facilities = Facility.all
     @facilities = Facility.page(params[:page]).reverse_order
     end
  end
  def search
    @q_facilities = @q.result.page(params[:page]).reverse_order
    @categories = Category.all
    render :index
  end
  def show
     @facility = Facility.find(params[:id])
     @facility_comment = FacilityComment.new
     @facility_comments = @facility.facility_comments
  end
  def calendar
      @events = Event.where(facility_id: params[:facility_id])
      @facility = Event.where(facility_id: params[:facility_id])
  end
end
