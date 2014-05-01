json.array!(@api_v1_users) do |api_v1_user|
  json.extract! api_v1_user, :id, :username, :email, :firstname, :lastname, :title
  json.url api_v1_user_url(api_v1_user, format: :json)
end
