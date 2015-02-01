source "https://rubygems.org"
# source 'https://rails-assets.org'

ruby "2.2.0"

gem 'rails', '4.2.0'
gem 'pg'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'bcrypt', '~> 3.1.7'
gem 'unicorn'
gem "rack-timeout"
gem "recipient_interceptor"
gem 'font-awesome-sass'
gem 'simple_form'
gem "haml-rails"
gem 'devise'
gem 'friendly_id'
gem 'bootstrap-sass'
gem 'autoprefixer-rails'
gem 'newrelic_rpm'

# source 'https://rails-assets.org' do
#   gem 'rails-assets-angular'
#   gem 'rails-assets-lodash'
# end

group :development, :test do
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem "awesome_print"
end

group :development do
  gem "foreman"
  gem 'bullet'
end

group :test do
  gem "capybara-webkit", ">= 1.2.0"
  gem "database_cleaner"
  gem "factory_girl_rails"
  gem "rspec-rails"
  gem "selenium-webdriver"
end

group :staging, :production do
  gem 'rails_12factor'
end