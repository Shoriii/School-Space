class Admins::EventsController < ApplicationController
  def index
    @customer = current_customer
    @events = Event.page(params[:page]).reverse_order
  end
  def show
    @event = Event.find(params[:id])
  end
  def update
    @event = Event.find(params[:id])
    @event.customer_id = current_customer.id
    if @event.update(event_params)
       redirect_to events_path
    else
      render 'show'
    end
  end

  def destroy
    @event = Event.find(params[:id])
    if @event.destroy
       redirect_to admins_events_path
    else
    	 render action: :destroy
    end
  end
  private
  def event_params
    params.require(:event).permit(:title, :start_at, :end_at, :people, :facility_id)
  end
end
