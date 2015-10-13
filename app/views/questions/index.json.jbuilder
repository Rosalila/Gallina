json.array!(@questions) do |question|
  json.extract! question, :id, :metric_id, :sentence
  json.url question_url(question, format: :json)
end
