Rails.application.config.middleware.use OmniAuth::Builder do
  OmniAuth.config.logger = Rails.logger
  provider :identity, :fields => [:username], on_failed_registration: lambda { |env|
    SessionsController.action(:new).call(env)
  }
end
