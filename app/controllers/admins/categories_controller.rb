class Admins::CategoriesController < ApplicationController
 def index
  @categories = Category.all
  @category = Category.new
 end
 def create
  category = Category.new(category_params)
    if category.save
      flash[:notice] = "You have creatad new category successfully."
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
      flash[:notice] = "You have edited category successfully."
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
