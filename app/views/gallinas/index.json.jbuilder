json.array!(@gallinas) do |gallina|
  json.extract! gallina, :id, :name, :description
  json.url gallina_url(gallina, format: :json)
end
