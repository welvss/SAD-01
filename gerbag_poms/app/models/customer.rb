class Customer < ActiveRecord::Base
has_many :purchaseorders
has_many :formalquotationscustomers
end