
Rails.application.config.middleware.use OmniAuth::Builder do
	provider :twitter, 'CONSUMER_KEY', 'CONSUMER_SECRET'
end

Rails.application.config.middleware.use OmniAuth::Builder do
	provider :facebook, '295385383926334', 'a4a145c82db9a7c5b2f379e8c0c7be8b'
end
