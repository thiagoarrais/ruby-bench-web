ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'mocha/mini_test'
require 'capybara-screenshot/minitest'
require 'sidekiq/testing'

Dir["#{Rails.root}/test/support/**/*"].each { |file| require file }

class ActiveSupport::TestCase
  # Add more helper methods to be used by all tests here...

  include FactoryGirl::Syntax::Methods
end

Sidekiq::Testing.fake!
