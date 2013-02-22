OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '336142959819973', '595ff227624c67315649676bb2937cc4', {:scope => 'email'}
end

