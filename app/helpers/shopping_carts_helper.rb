module ShoppingCartsHelper
	def find_quantity(product_id,shopping_cart_id)
		ProductShoppingCart.where(product_id: product_id,shopping_cart_id:shopping_cart_id).first.quantity
	end

	def find_subtotal(products,shopping_cart_id)
		total=0
		products.each do|product|
			total+= product.price* find_quantity(product.id,shopping_cart_id)
		end
		return total
	end
end
