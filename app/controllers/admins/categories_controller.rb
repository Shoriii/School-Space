class Admins::CategoriesController < ApplicationController
  before_action :authenticate_admin!
 def index
  @categories = Category.all
  @category = Category.new
 end
 def create
  category = Category.new(category_params)
    if category.save
      redirect_to admins_categories_path
    else
      @categories = Category.all
      render action: :index
    end
 end
 def edit
  @category = Category.find(params[:id])

 end
 def update
  category = Category.find(params[:id])
    if category.update(category_params)
      category = Category.find(params[:id])
      redirect_to admins_categories_path
    else
      render action: :edit
    end
 end
 private
  def category_params
    params.require(:category).permit(:category_name, :display)
  end
end
