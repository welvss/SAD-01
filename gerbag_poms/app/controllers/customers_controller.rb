class CustomersController < ApplicationController
	before_action :get_customer, only: [:edit, :update]
	def get_customer
		@customer = Customer.find(params[:CustomerID])
		
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
		
		@customer = Customer.new(customer_params)
		if @customer.save
		redirect_to customers_path
		end
		
	end

	def create
		redirect_to customers_path
	end
	def update
		if @customer.update(customer_params)
			 redirect_to customers_path
			end
	end


	def edit
		
	end


	def destroy
		@customer = Customer.find(params[:id])
		@customer.destroy
		redirect_to customers_path
	end




	private
	def customer_params
		params.fetch(:customer, Hash.new ).permit(:CustomerName,:MailingAddress,:ContactPerson,:ContactNumber,:EmailAddress)
	end
end