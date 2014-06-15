json.array!(@provider_reviews) do |provider_review|
  json.extract! provider_review, :id, :reviewer, :provider, :title, :description, :rating
  json.url provider_review_url(provider_review, format: :json)
end
