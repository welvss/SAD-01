class CustomersController < ApplicationController
	before_action :get_customer, only: [:edit, :update, :destroy]
	def get_customer
		@customer = Customer.find(params[:id])
		
	end


	def show
		
		respond_to do |format|
			format.html
		end
	end


	def new
		@customer = Customer.new
	end


	def index
		@customers= Customer.all
		@customer = Customer.new(customer_params)
		if @customer.save
		redirect_to customers_path
		end
		
	end

	
	def update
		 @customer.update_attributes(customer_params)
		
	
		redirect_to customers_path
		
	end


	def edit
		 
	end


	def destroy
		
		@customer.destroy
		redirect_to customers_path
	end




	private
	def customer_params
		params.fetch(:customer, Hash.new ).permit(:CustomerName,:MailingAddress,:ContactPerson,:ContactNumber,:EmailAddress)
		
	end
end