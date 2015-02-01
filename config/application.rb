require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Meatup
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true

    config.action_mailer.default_url_options = { :host => "www.meatup.in" }

    config.generators do |g|
      g.helper false
      g.javascript_engine false
      g.request_specs false
      g.routing_specs false
      g.model_specs false
      g.decorator_specs false
      g.factories false
      g.mailer_specs false
      g.view_specs false
      g.stylesheets false
      g.test_framework :rspec
      g.factory_girl false
    end
    
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
      :port           => '587',
      :address        => 'smtp.sendgrid.net',
      :user_name      => ENV['SENDGRID_USERNAME'],
      :password       => ENV['SENDGRID_PASSWORD'],
      :authentication => :plain,
      :domain         => 'heroku.com',
      :enable_starttls_auto => true
    }

  end
end
