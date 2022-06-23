class AdduseridtoOrder < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :user_id, :integer
    add_column :orders, :product_id, :integer
  end
end
