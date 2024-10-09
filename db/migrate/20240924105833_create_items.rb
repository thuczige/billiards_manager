class CreateItems < ActiveRecord::Migration[7.2]
  def change
    create_table :items do |t|
      t.integer :branch_id
      t.string :name
      t.integer :quantity
      t.decimal :unit_price
      t.integer :unit

      t.timestamps
    end
  end
end
