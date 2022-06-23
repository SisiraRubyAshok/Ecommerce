class Order < ApplicationRecord
	# has_many :products
	has_many :product_orders
	has_many :products , through: :product_orders
	belongs_to :user 
	# belongs_to :products
end
