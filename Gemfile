source 'https://rubygems.org'

ruby '1.9.3'

gem 'bcrypt-ruby', '~> 3.0.0'
gem 'bourbon'
gem 'delayed_job_active_record', '>= 4.0.0.beta2'
gem 'flutie'
gem 'high_voltage'
gem 'jquery-rails'
gem 'omniauth-identity'
gem 'pg'
gem 'phony_rails'
gem 'rack-timeout'
gem 'rails', '~> 3.2'
gem 'recipient_interceptor'
gem 'simple_form'
gem 'strong_parameters'
gem 'thin'
gem 'twilio-ruby'

group :production do
  gem 'therubyracer', :require => 'v8'
end

group :assets do
  gem 'coffee-rails'
  gem 'sass-rails'
  gem 'uglifier'

  # Add these gems
  gem 'compass-rails'
  gem 'zurb-foundation'
end

group :development do
  gem 'foreman'
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'sham_rack'
end

group :test do
  gem 'bourne', require: false
  gem 'capybara-webkit', '>= 0.14.1'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'timecop'
end
