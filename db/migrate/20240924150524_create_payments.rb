class CreatePayments < ActiveRecord::Migration[7.2]
  def change
    create_table :payments do |t|
      t.integer :store_id
      t.integer :user_id
      t.decimal :amount
      t.string :payment_method
      t.timestamp :expire_day
      t.integer :payment_package

      t.timestamps
    end
  end
end
