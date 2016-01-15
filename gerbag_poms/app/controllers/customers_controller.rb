class CustomersController < ApplicationController
	def show
		@customer = Customer.find(2)
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
	end

	private
	def customer_params
		params.fetch(:customer, Hash.new ).permit(:CustomerName,:MailingAddress,:ContactPerson,:ContactNumber,:EmailAddress)
	end
end