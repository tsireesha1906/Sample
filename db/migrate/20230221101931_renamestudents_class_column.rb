class RenamestudentsClassColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :students, :class, :student_class
    change_column :students, :student_class, :integer
  end
end
