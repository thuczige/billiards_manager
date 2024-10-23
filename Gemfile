source "https://rubygems.org"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "7.2.0"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails", "3.5.2"

# Integrate SassC-Ruby into Rails [https://github.com/sass/sassc-rails]
gem "sassc-rails", "2.1.2"

# Framework for developing responsive, mobile first projects on the web [https://github.com/twbs/bootstrap-rubygem]
gem "bootstrap", "5.3.3"

# Use mysql as the database for Active Record
gem "mysql2", "0.5.6"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "6.4.2"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails", "2.0.1"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails", "2.0.6"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails", "1.3.4"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder", "2.12.0"

# Use Redis adapter to run Action Cable in production
# gem "redis", ">= 4.0.1"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", "1.2024.1", platforms: %i[ windows jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", "1.18.4", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Manage multi-environment settings [https://rubygems.org/gems/config]
gem "config", "5.5.1"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", "1.9.2", platforms: %i[ mri windows ], require: "debug/prelude"

  # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem "brakeman", require: false

  # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem "rubocop-rails-omakase", "1.0.0", require: false

  # Used to easily generate fake data [https://github.com/faker-ruby/faker]
  gem "faker", "3.4.2"
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console", "4.2.1"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara", "3.40.0"
  gem "selenium-webdriver", "4.25.0"

  # Testing framework for Rails [https://github.com/rspec/rspec-rails]
  gem "rspec-rails", "6.1.4"

  # Mock objects when testing [https://github.com/thoughtbot/factory_bot_rails]
  gem "factory_bot_rails", "6.4.3"
end
