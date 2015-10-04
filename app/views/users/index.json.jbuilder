json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :username, :password, :enterprise_id
  json.url user_url(user, format: :json)
end
