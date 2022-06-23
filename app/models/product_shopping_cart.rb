class ProductShoppingCart < ApplicationRecord
	belongs_to :product , foreign_key: "product_id"
	belongs_to :order , foreign_key: "order_id"
end
