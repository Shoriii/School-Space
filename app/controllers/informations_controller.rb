class InformationsController < ApplicationController
  def index
    @informations = Information.where(facility_id: params[:facility_id]).all
  end

  def show
    @information = Information.find(params[:id])
  end
end
