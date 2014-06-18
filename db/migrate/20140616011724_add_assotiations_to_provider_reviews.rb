class AddAssotiationsToProviderReviews < ActiveRecord::Migration
  def change
    add_reference :provider_reviews, :provider, index: true
    add_reference :provider_reviews, :user, index: true 
  end
end
