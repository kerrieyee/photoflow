source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'
gem 'backbone-on-rails', '~> 1.0.0'

gem 'sqlite3'

# Gems used only for assets and not required
# in production environments by default.
gem 'sass-rails',   '~> 4.0.0.rc1'
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

gem 'uglifier', '>= 1.3.0'

gem 'jquery-rails', '~>2.1.3'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano', group: :development

# To use debugger
# gem 'debugger'

group :development do
	gem 'pry-rails'
	gem 'rack-mini-profiler'
end

group :test, :development do
  gem "factory_girl_rails"
  gem "jasmine", :git => 'git://github.com/pivotal/jasmine-gem.git'
  gem 'faker'
end

group :test do
  gem 'cucumber-rails', :require => false, :git => 'git://github.com/cucumber/cucumber-rails.git', :branch => 'master_rails4_test'
  gem "rspec-rails"
  gem "shoulda-matchers"
  gem 'database_cleaner', :git => 'git://github.com/scottwillson/database_cleaner.git'
  #in rails 4 you need to explicitly get dbcleaner from the repo since there has been a fix for rails 4
end