class CreateAddresses < ActiveRecord::Migration[7.2]
  def change
    create_table :addresses do |t|
      t.integer :country_id
      t.integer :prefecture_id
      t.integer :district_id
      t.integer :ward_id
      t.string :address

      t.timestamps
    end
  end
end
