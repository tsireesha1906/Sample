class CreateCities < ActiveRecord::Migration[7.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :address
      t.text :description
      t.string :landmark
      t.integer :state_id

      t.timestamps
    end
  end
end
