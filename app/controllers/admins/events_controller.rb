class Admins::EventsController < ApplicationController
  def index
    @events = Event.all
    @events = Event.page(params[:page]).reverse_order
  end
  def show
    @event = Event.find(params[:id])
  end
end
