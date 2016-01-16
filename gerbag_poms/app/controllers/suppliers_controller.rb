class SuppliersController < ApplicationController
	before_action :get_supplier, only: [:edit, :update, :destroy]
	def get_supplier
		@supplier = Supplier.find(params[:id])
		
	end


	def show
		respond_to do |format|
			format.html
		end
	end


	def new
		@supplier = Supplier.new
	end

	def index
		@suppliers= Supplier.all
		@supplier = Supplier.new(supplier_params)
		if @supplier.save
		redirect_to suppliers_path
		end
		
	end

	
	def update
		@supplier.update_attributes(supplier_params)
		redirect_to suppliers_path
		
	end


	def edit 

	end


	def destroy
		@supplier.destroy
		redirect_to suppliers_path
	end


	private
	def supplier_params
		params.fetch(:supplier, Hash.new ).permit(:SupplierName,:MailingAddress,:ContactPerson,:ContactNumber,:EmailAddress)
		
	end
end