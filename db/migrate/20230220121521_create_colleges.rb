class CreateColleges < ActiveRecord::Migration[7.0]
  def change
    create_table :colleges do |t|
      t.string :name
      t.string :address
      t.string :location
      t.integer :strength
      t.integer :city_id

      t.timestamps
    end
  end
end
