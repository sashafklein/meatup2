source "https://rubygems.org"
# source 'https://rails-assets.org'

ruby "2.2.0"

gem 'rails', '4.2.0'
gem 'pg'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder'
gem 'bcrypt'
gem 'unicorn'
gem "rack-timeout"
gem "recipient_interceptor"
gem 'font-awesome-sass'
gem 'simple_form'
gem "haml-rails"
gem 'devise'
gem 'friendly_id'
gem 'bootstrap-sass'
gem 'bootstrap-generators'
gem 'autoprefixer-rails'
gem 'newrelic_rpm'
gem 'figaro'

# source 'https://rails-assets.org' do
#   gem 'rails-assets-angular'
#   gem 'rails-assets-lodash'
# end

group :development, :test do
  gem 'byebug'
  gem 'web-console'
  gem "awesome_print"
end

group :development do
  gem "foreman"
  gem 'bullet'
end

group :test do
  gem "capybara-webkit"
  gem "database_cleaner"
  gem "factory_girl_rails"
  gem "rspec-rails"
  gem "selenium-webdriver"
end

group :staging, :production do
  gem 'rails_12factor'
end