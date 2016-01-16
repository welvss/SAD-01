class Supplier < ActiveRecord::Base
has_many :quotationsuppliers
has_many :orders
validates_presence_of :SupplierName
end