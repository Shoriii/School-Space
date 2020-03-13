class FacilitiesController < ApplicationController
  def index
      @facilities = Facility.all
  end
  def show
      @facility = Facility.find(params[:id])
      @events = @facility.events
      
  end
end
