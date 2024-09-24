class CreateBranches < ActiveRecord::Migration[7.2]
  def change
    create_table :branches do |t|
      t.integer :store_id, null: false, foreign_key: true
      t.integer :address_id, null: false, foreign_key: true
      t.string :name
      t.string :phone_number
      t.int :status, default: 0

      t.timestamps
    end
  end
end
