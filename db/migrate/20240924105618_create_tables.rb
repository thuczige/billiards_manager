class CreateTables < ActiveRecord::Migration[7.2]
  def change
    create_table :tables do |t|
      t.integer :branch_id
      t.string :name
      t.string :type
      t.decimal :price_per_hour
      t.string :status

      t.timestamps
    end
  end
end
