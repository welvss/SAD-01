class QuotationsuppliersController < ApplicationController
	def show
		@supplier = Supplier.all
		
	end
	def index
		@quotationsuppliers = Quotationsupplier.all
	end
	def new
		@quotationsupplier = Quotationsupplier.new
	end
	def create
		@quotationsupplier = Quotationsupplier.new(quotationsupplier)
		@quotaionsupplier.item_create(params.fetch(:item, Hash.new ).permit(:ItemDescription,:Unit,:Quantity,:Price,:Availability))
	end


	private
	def quotationsupplier_params
		params.fetch(:quotationsupplier, Hash.new ).permit(:SupplierID,:DateRequested,:DateRequired)
		
	end
end