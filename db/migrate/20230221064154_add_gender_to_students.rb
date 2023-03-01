class AddGenderToStudents < ActiveRecord::Migration[7.0]
  def change
    change_column :students, :gender, :boolean
  end
end
