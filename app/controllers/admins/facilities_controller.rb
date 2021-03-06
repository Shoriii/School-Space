class Admins::FacilitiesController < ApplicationController
  before_action :authenticate_admin!
  def top
    @facilities = Facility.all.order("created_at DESC").limit(4)
    @events= Event.where(title: "予約済").limit(4)
    @c_events= Event.where(title: "キャンセル済")
  end
  def new
    @facility = Facility.new
  end
  def index
    @facilities = Facility.all.page(params[:page]).reverse_order
  end
  def create
    @facility = Facility.new(facility_params)
    if @facility.save
      redirect_to admins_facilities_path
    else
      render 'new'
    end
  end
  def show
    @facility = Facility.find(params[:id])
    @events = @facility.events
    @facility_comments = @facility.facility_comments
  end
  def edit
    @facility = Facility.find(params[:id])
  end
  def update
    @facility = Facility.find(params[:id])
    if @facility.update(facility_params)
      redirect_to admins_facility_path(@facility.id)
    else
      render 'edit'
    end
  end
  def calendar
    @events = Event.where(facility_id: params[:facility_id])
    @facility = Event.where(facility_id: params[:facility_id])
end
  private
  def facility_params
    params.require(:facility).permit(:facility_name, :facility_image, :address, :date, :lending_time, :facility_phone, :introduction, :use_status)
  end
end
