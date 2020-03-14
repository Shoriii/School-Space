class FacilitiesController < ApplicationController
  def index
    @catefories = Category.all
    @facilities = Facility.all
  	 if into = params[:category_name]
  	 @facilities = Category.find_by(category_name: params[:category_name]).facilities
    else
     Facility.all
     end
  end
  def show
      @facility = Facility.find(params[:id])
      @events = @facility.events
  end
end
