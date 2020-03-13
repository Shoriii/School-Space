class CustomersController < ApplicationController
  def show
    @customer = current_customer
  end
  def edit
    @customer = current_customer
  end
  def update
    @customer = current_customer
    if  @customer.update(customer_params)
       redirect_to customer_path
    else
   	   render action: :edit
    end
  end
  def destroy
    @customer = current_customer
    if @customer.delete
       redirect_to root_path
    else
    	 render action: :destroy
    end
  end
  def withdraw

  end
  private
  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :kana_last_name, :kana_first_name, :telephone, :email)
  end
end
