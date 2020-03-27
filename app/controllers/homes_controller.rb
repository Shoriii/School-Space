class HomesController < ApplicationController
  def top
    @facilities = Facility.all.order("created_at DESC").limit(6)
    @events= Event.order("created_at DESC").limit(6).select(:facility_id).distinct
  end
  def about

  end
end
