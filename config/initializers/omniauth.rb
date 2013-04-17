
Rails.application.config.middleware.use OmniAuth::Builder do
	provider :twitter, 'CONSUMER_KEY', 'CONSUMER_SECRET'
end

Rails.application.config.middleware.use OmniAuth::Builder do
	provider :facebook, 'CONSUMER_KEY', 'CONSUMER_SECRET'
end
