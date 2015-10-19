json.array!(@gallina_members) do |gallina_member|
  json.extract! gallina_member, :id, :gallina_id, :user_id
  json.url gallina_member_url(gallina_member, format: :json)
end
