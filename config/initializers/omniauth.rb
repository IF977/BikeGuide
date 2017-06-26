#OmniAuth.config.logger = Rails.logger

#Rails.application.config.middleware.use OmniAuth::Builder do
 # provider :google_oauth2,ENV['404426272416-6sqa7ec86ljnksfs13d6dp9cpim7k6gf.apps.googleusercontent.com'], ENV['dnPjgmRTUZblQPC8Hv10Q_ZB'], {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
#end
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['404426272416-6sqa7ec86ljnksfs13d6dp9cpim7k6gf.apps.googleusercontent.com'], ENV["dnPjgmRTUZblQPC8Hv10Q_ZB"]
  {
    :scope => ['contacts','plus.login','plus.me','email','profile'],
    :image_aspect_ratio => "square",
    :image_size => 50,
    :access_type => 'offline'
  }
  
end