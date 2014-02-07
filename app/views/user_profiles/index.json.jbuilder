json.array!(@users) do |user|
  json.extract! user, :id, :firstName, :lastName, :email, :age, :gender
  json.url user_url(user, format: :json)
end
