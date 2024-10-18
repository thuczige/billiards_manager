class CreateBills < ActiveRecord::Migration[7.2]
  def change
    create_table :bills do |t|
      t.integer :table_id
      t.decimal :hourly_fee
      t.decimal :order_fee
      t.decimal :total_fee
      t.float :discount_hourly
      t.float :discout_order
      t.string :status
      t.datetime :start_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
