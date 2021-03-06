# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require 'spec_helper'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
# Add additional requires below this line. Rails is not loaded until this point!

Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

module Features
  include Warden::Test::Helpers
  Warden.test_mode!
  
  def sign_in(user)
    login_as(user, scope: :user)
  end
end

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  config.use_transactional_fixtures = false

  config.infer_spec_type_from_file_location!

  config.include Features, type: :feature
end
