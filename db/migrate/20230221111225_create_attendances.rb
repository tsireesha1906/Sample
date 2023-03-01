class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.integer :student_id
      t.boolean :attendance_status

      t.timestamps
    end
  end
end
