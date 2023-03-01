class CreateStates < ActiveRecord::Migration[7.0]
  def change
    create_table :states do |t|
      t.string :name
      t.integer :country_id
      t.text :description

      t.timestamps
    end
  end
end
