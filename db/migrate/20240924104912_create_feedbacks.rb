class CreateFeedbacks < ActiveRecord::Migration[7.2]
  def change
    create_table :feedbacks do |t|
      t.integer :user_id
      t.integer :reply_parent_id
      t.string :content
      t.string :status
      t.string :reply_content
      t.timestamp :replies_at

      t.timestamps
    end
  end
end
