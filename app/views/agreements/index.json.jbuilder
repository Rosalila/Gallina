json.array!(@agreements) do |agreement|
  json.extract! agreement, :id, :gallina_id, :statement
  json.url agreement_url(agreement, format: :json)
end
