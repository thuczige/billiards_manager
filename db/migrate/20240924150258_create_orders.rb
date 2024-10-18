class CreateOrders < ActiveRecord::Migration[7.2]
  def change
    create_table :orders do |t|
      t.integer :bill_id
      t.integer :setting_id
      t.integer :quantity

      t.timestamps
    end
  end
end
