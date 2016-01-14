class CustomersController < ApplicationController
	def show
		@customer = Customer.find(2)
		respond_to do |format|
			format.html
		end
	end
	def index

	end
	def create
	end

end