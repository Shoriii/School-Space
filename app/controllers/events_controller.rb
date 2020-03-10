class EventsController < ApplicationController
  def new
      @event = Event.new
  end
  def index
      @events = Event.all
  end
  def show

  end
  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to events_path
    else
      render 'new'
    end
  end
  def edit

  end
  def update

  end
  def destroy

  end
  def thanks

  end
  def confirm

  end
  private
  def event_params
    params.require(:event).permit(:title, :start_at, :end_at, :people)
  end
end
