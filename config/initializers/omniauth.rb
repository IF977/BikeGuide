Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['404426272416-rgrlrkgs7b5d33cr2pfgutdj79cn2je8.apps.googleusercontent.com'], ENV['2UYd_GJ6TotUonk7hnl_FXvY'], {
  scope: 'profile', image_aspect_ratio: 'square', image_size: 48, access_type: 'online'}
end