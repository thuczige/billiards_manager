class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.integer :branch_id
      t.string :username
      t.string :password_digest
      t.integer :status

      t.timestamps
    end
  end
end
