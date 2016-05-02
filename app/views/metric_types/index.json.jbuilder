json.array!(@metric_types) do |metric_type|
  json.extract! metric_type, :id, :name
  json.url metric_type_url(metric_type, format: :json)
end
