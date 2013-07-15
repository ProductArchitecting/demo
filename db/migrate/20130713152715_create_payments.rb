class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.belongs_to :cart, index: true
      t.text :params
      t.string :status
      t.string :txn_id

      t.timestamps
    end
  end
end
