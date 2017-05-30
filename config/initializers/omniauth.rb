OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '404426272416-rgrlrkgs7b5d33cr2pfgutdj79cn2je8.apps.googleusercontent.com', '2UYd_GJ6TotUonk7hnl_FXvY', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end