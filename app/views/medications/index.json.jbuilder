json.array!(@medications) do |medication|
  json.extract! medication, :id, :name, :description
  json.url medication_url(medication, format: :json)
end
