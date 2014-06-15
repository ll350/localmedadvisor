json.array!(@providers) do |provider|
  json.extract! provider, :id, :name, :specialty, :city, :state, :zip
  json.url provider_url(provider, format: :json)
end
