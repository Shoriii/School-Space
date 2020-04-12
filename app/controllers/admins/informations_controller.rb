class Admins::InformationsController < ApplicationController
  def index
    @informations = Information.all
    @information = Information.new
  end
  def create
    @information = Information.new(information_params)
    if @information.save
      redirect_to admins_informations_path
    else
      render 'index'
    end
  end

  def show
    @information = Information.find(params[:id])
  end

  def edit
    @information = Information.find(params[:id])
  end

  def update
    if @information.update(information_params)
      redirect_to admins_information_path(@information.id)
    else
      render 'edit'
    end
  end
  def destroy
    @information = Information.find(params[:id])
    if @information.destroy
       redirect_to admins_informations_path
    else
    	 render action: :destroy
    end
  end
  private
  def information_params
    params.require(:information).permit(:facility_id, :title, :body)
  end
end
