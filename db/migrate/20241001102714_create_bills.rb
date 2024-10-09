class CreateBills < ActiveRecord::Migration[7.2]
  def change
    create_table :bills do |t|
      t.integer :branch_id
      t.integer :table_id
      t.decimal :hourly_money
      t.decimal :order_money
      t.string :total_money
      t.float :discount
      t.decimal :final_money
      t.string :payment_method
      t.string :status

      t.timestamps
    end
  end
end
