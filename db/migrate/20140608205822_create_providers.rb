class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name
      t.string :specialty
      t.string :city
      t.string :state
      t.integer :zip

      t.timestamps
    end
  end
end
