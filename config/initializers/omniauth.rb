OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '492661764239202', '8ce790ec137d108e7da82b7853aefd8f'
end
