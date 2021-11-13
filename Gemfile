source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'

gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'bcrypt', '~> 3.1', '>= 3.1.16'
gem 'vite_rails'
gem 'rexml', '~> 3.2', '>= 3.2.5'

group :development, :test do  
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'better_errors', '~> 2.9', '>= 2.9.1'
  gem 'binding_of_caller', '~> 1.0'
end

group :test do
  gem 'capybara', '~> 3.35', '>= 3.35.3'
  gem 'selenium-webdriver', '~> 3.142', '>= 3.142.7'
  gem 'webdrivers', '~> 4.6', '>= 4.6.1'
  gem 'rails-controller-testing', '~> 1.0', '>= 1.0.5'
  gem 'minitest', '~> 5.14', '>= 5.14.4'
  gem 'minitest-reporters', '~> 1.4', '>= 1.4.3'
  gem 'simplecov', '~> 0.21.2'
  gem 'simplecov_json_formatter', '~> 0.1.3'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
