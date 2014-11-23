json.array!(@specialities) do |speciality|
  json.extract! speciality, :id, :name, :color
  json.url speciality_url(speciality, format: :json)
end
