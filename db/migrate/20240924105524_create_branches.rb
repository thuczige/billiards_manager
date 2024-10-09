class CreateBranches < ActiveRecord::Migration[7.2]
  def change
    create_table :branches do |t|
      t.integer :store_id
      t.integer :user_id
      t.string :name
      t.string :address
      t.string :phone
      t.string :status

      t.timestamps
    end
  end
end
