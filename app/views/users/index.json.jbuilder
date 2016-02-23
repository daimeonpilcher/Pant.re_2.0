json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :email, :password_digest, :weight, :height, :body_fat, :dob
  json.url user_url(user, format: :json)
end
