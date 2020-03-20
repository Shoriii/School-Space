class FavoritesController < ApplicationController
  def create
    @facility = Facility.find(params[:facility_id])
    favorite = @facility.favorites.new(customer_id: current_customer.id)
    favorite.save
  end

  def destroy
    @facility = Facility.find(params[:facility_id])
    favorite = current_customer.favorites.find_by(facility_id: @facility.id)
    favorite.destroy
  end

  private
  def redirect
    case params[:redirect_id].to_i
    when 0
      redirect_to facility_path(@facility)
    when 1
      redirect_to facility_path(@facility)
    end
  end
end
