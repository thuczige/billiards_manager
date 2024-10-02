class CreateOrders < ActiveRecord::Migration[7.2]
  def change
    create_table :orders do |t|
      t.integer :bill_id
      t.string :name
      t.integer :quantity
      t.string :unitprice
      t.integer :unit

      t.timestamps
    end
  end
end
