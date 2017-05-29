Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['CLIENT_ID'], ENV['2UYd_GJ6TotUonk7hnl_FXvY'], {
  scope: 'profile', image_aspect_ratio: 'square', image_size: 48, access_type: 'online'}
end