class Supplier < ActiveRecord::Base
has_many :quotationsuppliers
has_many :orders
end