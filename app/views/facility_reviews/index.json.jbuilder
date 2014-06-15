json.array!(@facility_reviews) do |facility_review|
  json.extract! facility_review, :id, :reviewer, :facility, :title, :description, :rating
  json.url facility_review_url(facility_review, format: :json)
end
