class Customer < ActiveRecord::Base
has_many :purchaseorders
has_many :formalquotationscustomers
validates_presence_of :CustomerName
end