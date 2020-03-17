class HomesController < ApplicationController
  def top
    @facilities = Facility.all.order("created_at DESC").limit(6)
    @events= Event.all.order("created_at DESC").limit(6)
  end
  def about

  end
end
