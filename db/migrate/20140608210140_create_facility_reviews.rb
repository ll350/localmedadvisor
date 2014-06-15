class CreateFacilityReviews < ActiveRecord::Migration
  def change
    create_table :facility_reviews do |t|
      t.string :reviewer
      t.string :facility
      t.string :title
      t.text :description
      t.integer :rating

      t.timestamps
    end
  end
end
