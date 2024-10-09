class CreateMembers < ActiveRecord::Migration[7.2]
  def change
    create_table :members do |t|
      t.integer :branch_id
      t.string :full_name
      t.string :email
      t.string :phone
      t.string :shift
      t.decimal :salary

      t.timestamps
    end
  end
end
