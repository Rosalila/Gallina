json.array!(@user_agreements) do |user_agreement|
  json.extract! user_agreement, :id, :user_id, :agreement_id, :accepted
  json.url user_agreement_url(user_agreement, format: :json)
end
