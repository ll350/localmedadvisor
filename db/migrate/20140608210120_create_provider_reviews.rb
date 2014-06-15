class CreateProviderReviews < ActiveRecord::Migration
  def change
    create_table :provider_reviews do |t|
      t.string :reviewer
      t.string :provider
      t.string :title
      t.text :description
      t.integer :rating

      t.timestamps
    end
  end
end
