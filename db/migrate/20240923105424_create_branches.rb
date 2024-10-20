class CreateBranches < ActiveRecord::Migration[7.2]
  def change
    create_table :branches do |t|
      t.integer :store_id
      t.string :name
      t.string :phone_number
      t.integer :status, default: 0
      t.integer :country_id
      t.integer :prefecture_id
      t.integer :district_id
      t.integer :ward_id
      t.string :address

      t.timestamps
    end
  end
end
