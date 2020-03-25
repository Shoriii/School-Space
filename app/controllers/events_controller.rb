class EventsController < ApplicationController
  before_action :authenticate_customer!

  def new
      @event = Event.new(facility_id: params[:facility_id])
  end
  def index
    @events = Event.all
    @events = Event.page(params[:page]).reverse_order
  end
  def show
    @event = Event.find(params[:id])
  end
  def create
    @event = Event.new(event_params)
    @event.customer_id = current_customer.id
    if @event.save
      redirect_to thanks_events_path
    else
      render 'new'
    end
  end
  def edit

  end
  def update
    @event = Event.find(params[:id])
    @event.customer_id = current_customer.id
    if @event.update(events_params)
       redirect_to cancel_events_path
    else
      render 'show'
    end
  end
  def destroy

  end
  def thanks

  end
  def confirm
    @event = Event.new(event_params)
  end
  def cancel
  end
  private
  def event_params
    params.require(:event).permit(:title, :start_at, :end_at, :people, :facility_id, :number)
  end
  def events_params
    params.require(:event).permit(:title)
  end
end
