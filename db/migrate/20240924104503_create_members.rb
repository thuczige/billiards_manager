class CreateMembers < ActiveRecord::Migration[7.2]
  def change
    create_table :members do |t|
      t.integer :branch_id
      t.string :name
      t.string :phone_number

      t.timestamps
    end
  end
end
