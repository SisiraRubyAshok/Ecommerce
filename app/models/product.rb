class Product < ApplicationRecord
	
	has_many :product_orders
	has_many :product_shopping_carts
	has_many :shopping_cart , through: :product_shopping_carts
	has_many :orders , through: :product_orders
end
