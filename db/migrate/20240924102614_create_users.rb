class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.integer :branch_id, null: false, foreign_key: true
      t.string :name
      t.string :username
      t.string :password_digest
      t.int :status

      t.references :work_shift, foreign_key: true

      t.timestamps
    end
  end
end
