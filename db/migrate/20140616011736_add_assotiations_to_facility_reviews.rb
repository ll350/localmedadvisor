class AddAssotiationsToFacilityReviews < ActiveRecord::Migration
  def change
    add_reference :facility_reviews, :facility, index: true
    add_reference :facility_reviews, :user, index: true 
  end
end
