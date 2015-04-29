json.array!(@users) do |user|
  json.extract! user, :id, :login, :password, :name, :graduation, :email
  json.url user_url(user, format: :json)
end
