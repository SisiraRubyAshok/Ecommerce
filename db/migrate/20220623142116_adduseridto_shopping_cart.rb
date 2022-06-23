class AdduseridtoShoppingCart < ActiveRecord::Migration[7.0]
  def change
    add_column :shopping_carts, :user_id, :integer
    add_column :shopping_carts, :product_id, :integer
  end
end
