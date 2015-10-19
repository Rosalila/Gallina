json.array!(@reviews) do |review|
  json.extract! review, :id, :question_id, :reviewer_id, :reviewed_id, :grade
  json.url review_url(review, format: :json)
end
