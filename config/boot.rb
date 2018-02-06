<<<<<<< HEAD
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)
=======
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)
>>>>>>> 2905e72d927fd41518bb7ba52e3d68bf1ffabf98

require 'bundler/setup' # Set up gems listed in the Gemfile.
