class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price ,  default: 0

      t.timestamps
    end
  end
end
