class User < ApplicationRecord
	has_one :shopping_cart
	# has_many :products , through: :orders
	has_many :orders
end
