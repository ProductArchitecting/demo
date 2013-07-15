class CartsProducts < ActiveRecord::Migration
  def change
    create_table :carts_products , primary_key: false,id: false do |t|
      t.integer :product_id
      t.integer :cart_id
    end
  end
end
