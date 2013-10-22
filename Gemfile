source 'https://rubygems.org'

ruby '1.9.3'

gem 'bcrypt-ruby', '~> 3.0'
gem 'bootstrap-sass', github: 'thomas-mcdonald/bootstrap-sass'
gem 'coffee-rails'
gem 'delayed_job_active_record', '>= 4.0.0'
gem 'email_validator'
gem 'flutie'
gem 'high_voltage'
gem 'jquery-rails'
gem 'omniauth-identity'
gem 'pg'
gem 'phony_rails'
gem 'rack-timeout'
gem 'rails', '>= 4.0.0'
gem 'recipient_interceptor'
gem 'sass-rails', '>= 3.2' # sass-rails needs to be higher than 3.2
gem 'simple_form'
gem 'thin'
gem 'twilio-ruby'
gem 'uglifier'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'foreman'
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails', '>= 2.14'
end

group :test do
  gem 'capybara-webkit', '>= 1.0.0'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'timecop'
  gem 'webmock'
end

group :staging, :production do
  gem 'rails_12factor'
end
