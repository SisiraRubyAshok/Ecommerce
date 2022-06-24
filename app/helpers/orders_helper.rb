module OrdersHelper
	def find_quantity(product_id,order_id)
		ProductOrder.where(product_id: product_id,order_id:order_id).first.quantity
	end
end
