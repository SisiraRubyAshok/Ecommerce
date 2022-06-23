class CreateProductShoppingCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :product_shopping_carts do |t|
      t.integer :product_id
      t.integer :shopping_carts_id

      t.timestamps
    end
  end
end
