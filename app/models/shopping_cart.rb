class ShoppingCart < ApplicationRecord	
	has_many :product_shopping_carts
	has_many :products , through: :product_shopping_carts
	belongs_to :user
end
