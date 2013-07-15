class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :user_id
      t.decimal :price   ,default: 0
      t.timestamp :purchased_at

      t.timestamps
    end
  end
end
