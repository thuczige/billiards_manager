class CreateFeedbacks < ActiveRecord::Migration[7.2]
  def change
    create_table :feedbacks do |t|
      t.integer :user_id
      t.integer :parent_id
      t.text :content
      t.int :status, default: 0

      t.timestamps
    end
  end
end
