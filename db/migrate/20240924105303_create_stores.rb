class CreateStores < ActiveRecord::Migration[7.2]
  def change
    create_table :stores do |t|
      t.integer :user_id
      t.string :name
      t.text :note

      t.timestamps
    end
  end
end
