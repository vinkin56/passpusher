source 'https://rubygems.org'

ruby ENV['CUSTOM_RUBY_VERSION'] || '>=3.1.4'

gem 'rails', '~> 7.0.7'

group :development do
  gem 'listen'

  # Visual Studio Additions
  gem 'rubocop'
  gem 'ruby-debug-ide'

  gem 'pry-rails'

  # Access an interactive console on exception pages or by
  # calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.2.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.37.1', '< 4.0'
  gem 'minitest'
  gem 'minitest-reporters'
  gem 'minitest-rails', '>= 6.1.0'
  gem 'selenium-webdriver'
  gem 'webdrivers', '~> 5.3', require: false
end

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[ mri mingw x64_mingw ]
  gem 'debase', '>= 0.2.5.beta2', platforms: %i[ mri mingw x64_mingw ]
end

gem 'rack-cors'
gem 'rack-attack'

# OSX: ../src/utils.h:33:10: fatal error: 'climits' file not found
# From:
# # 1. Install v8 ourselves
# $ brew install v8-315
# # 2. Install libv8 using the v8 binary we just installed
# $ gem install libv8 -v '3.16.14.19' -- --with-system-v8
# # 3. Install therubyracer using the v8 binary we just installed
# $ gem install therubyracer -- --with-v8-dir=/usr/local/opt/v8@315
# # 4. Install the remaining dependencies
# $ bundle install
# gem 'therubyracer'
#
gem 'lockbox'
gem 'high_voltage'
gem 'kramdown', require: false

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

# Use SCSS for stylesheets
gem 'sass-rails', '~> 6.0', '>= 6.0.0'
gem "terser", "~> 1.1"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'json', '~> 2.0' # Legacy carry-over
gem 'will_paginate', '~> 4.0.0'
gem 'will_paginate-bootstrap-style'
gem 'bootstrap', '~> 5.2', '>= 5.2.3'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

gem 'foreman'
gem 'puma'
gem 'oj'
gem 'devise', '>= 4.9.0'
gem 'config'
gem 'mail_form', '>= 1.9.0'
gem 'apipie-rails'
gem 'simple_token_authentication', '~> 1.18', '>= 1.18.0', git: "https://github.com/pglombardo/simple_token_authentication.git", branch: 'rails7-support'
gem 'lograge'
gem 'rollbar'

gem 'route_translator', '>= 13.0.0'
gem 'translation'
gem 'rails-i18n', '~> 7.0.7'
gem 'i18n-tasks', '~> 1.0.12'
gem 'devise-i18n'

# For File Uploads
gem "aws-sdk-s3", require: false
gem "azure-storage-blob", "~> 2.0", require: false
gem "google-cloud-storage", "~> 1.11", require: false

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :postgres, optional: true do
  gem 'pg'
end

group :mysql, optional: true do
  gem 'mysql2'
end

group :sqlite, optional:true do
  gem 'sqlite3', force_ruby_platform: true
end

group :production, :private do
  gem 'rack-timeout'
  gem 'rack-throttle', '0.7.0'
end

