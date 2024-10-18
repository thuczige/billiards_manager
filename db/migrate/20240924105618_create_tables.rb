class CreateTables < ActiveRecord::Migration[7.2]
  def change
    create_table :tables do |t|
      t.integer :branch_id
      t.string :name
      t.integer :type, default: 0
      t.integer :price_per_hour
      t.integer :status, default: 1

      t.timestamps
    end
  end
end
