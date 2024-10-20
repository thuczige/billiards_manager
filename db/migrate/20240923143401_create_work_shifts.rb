class CreateWorkShifts < ActiveRecord::Migration[7.2]
  def change
    create_table :work_shifts do |t|
      t.string :shift_type
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
