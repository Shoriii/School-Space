class Admins::CustomersController < ApplicationController
  before_action :authenticate_admin!
  def index
    @customers = Customer.page(params[:page]).reverse_order
  end
  def show
    @customer = Customer.find(params[:id])
  end
  def edit
    @customer = Customer.find(params[:id])
  end
  def update
    customer = Customer.find(params[:id])
    if  customer.update(customer_params)
       redirect_to admins_customer_path
    else
   	   render action: :edit
    end
  end
    private
  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :kana_last_name, :kana_first_name, :telephone, :email, :member_status)
  end
end
