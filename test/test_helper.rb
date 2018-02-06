<<<<<<< HEAD
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
=======
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'capybara/rails'
>>>>>>> 2905e72d927fd41518bb7ba52e3d68bf1ffabf98

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
