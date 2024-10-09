class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :fullname
      t.string :email
      t.string :phone
      t.string :password
      t.string :status

      t.timestamps
    end
  end
end
