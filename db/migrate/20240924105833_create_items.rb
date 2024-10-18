class CreateItems < ActiveRecord::Migration[7.2]
  def change
    create_table :items do |t|
      t.integer :branch_id
      t.string :name
      t.integer :unit
      t.integer :quantity
      t.decimal :unit_price
      t.timestamps
    end
  end
end
