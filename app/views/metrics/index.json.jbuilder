json.array!(@metrics) do |metric|
  json.extract! metric, :id, :gallina_id, :name, :description, :weight
  json.url metric_url(metric, format: :json)
end
