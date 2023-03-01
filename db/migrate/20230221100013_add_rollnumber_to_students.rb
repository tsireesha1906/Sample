class AddRollnumberToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :rollnumber, :integer
    add_column :students, :section, :string
    add_column :students, :class, :integer
    end
end
