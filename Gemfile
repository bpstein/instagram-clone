source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.4'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'therubyracer', platforms: :ruby
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'capistrano-rails', group: :development
gem 'pg', group: :production
gem 'rails_12factor', group: :production
gem 'figaro'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'jquery-easing-rails'
gem 'materialize-sass'
gem 'devise'
gem 'simple_form'
gem 'paperclip'


group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'ffaker'
  gem 'sqlite3'
  gem 'capybara'
  gem 'coveralls', require: false
  gem 'poltergeist'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'database_cleaner'
  gem 'warden-rspec-rails'
  gem 'rails-controller-testing'
  gem 'launchy'
  gem 'dotenv-rails'
  gem 'stripe-ruby-mock', '~> 2.4.0', require: 'stripe_mock'
  gem 'foreman'
  gem 'jasmine'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
