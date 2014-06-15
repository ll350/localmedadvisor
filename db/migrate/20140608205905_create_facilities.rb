class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.string :name
      t.text :description
      t.string :city
      t.string :state
      t.integer :zip

      t.timestamps
    end
  end
end
