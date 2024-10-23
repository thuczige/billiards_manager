class CreateSellingPriceSettings < ActiveRecord::Migration[7.2]
  def change
    create_table :selling_price_settings do |t|
      t.string :name
      t.string :unit
      t.string :price

      t.timestamps
    end
  end
end
