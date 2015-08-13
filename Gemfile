source "https://rubygems.org"

gem "rails", "4.0.8"
gem 'sass-rails'
gem 'haml-rails'

# uncomment to use PostgreSQL
# gem "pg"
#
# NOTE: If you use PostgreSQL, you must still leave enabled the above mysql2
# gem for Sphinx full text search to function.
gem "mysql2"#, ">= 0.3.14"
gem "thinking-sphinx"#, "~> 3.0.6"

gem "uglifier"#, ">= 1.3.0"
gem "jquery-rails"
gem "dynamic_form"

gem "exception_notification"

gem "bcrypt"#, "~> 3.1.2"

gem "nokogiri"#, "= 1.6.1"
gem "htmlentities"
gem "rdiscount"

# for twitter-posting bot
gem "oauth"

# for parsing incoming mail
gem "mail"

group :development do
  gem 'capistrano-rails'
  gem 'capistrano-bundler'
  gem 'capistrano-chruby'
end

group :test, :development do
  gem "rspec-rails", "~> 2.6"
  gem "machinist"
  gem "sqlite3"
  gem "faker"
  gem 'test-unit'
end

group :production do
  gem "unicorn"
  gem "therubyracer"
  gem "thin"
end
