# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.1.2'

gem 'hanami', '~> 2.0'
gem 'hanami-controller', '~> 2.0'
gem 'hanami-router', '~> 2.0'
gem 'hanami-validations', '~> 2.0'

gem 'dry-types', '~> 1.0', '>= 1.6.1'
gem 'puma'
gem 'rake'

gem 'pg'
gem 'rom', '~> 5.3'
gem 'rom-sql', '~> 3.6'

gem 'awesome_pry'
gem 'oj'

group :development, :test do
  gem 'dotenv'
  gem 'hanami-webconsole'
  gem 'shotgun', platforms: :ruby

  gem 'guard-bundler'
  gem 'guard-rspec'
  gem 'guard-rubocop'
  gem 'terminal-notifier'
  gem 'terminal-notifier-guard'

  gem 'rubocop', require: false
  gem 'rubocop-performance'
  gem 'rubocop-rspec', require: false
end

group :cli, :development do
  gem 'hanami-reloader'
end

group :cli, :development, :test do
  gem 'hanami-rspec'
end

group :development do
  gem 'guard-puma', '~> 0.8'
end

group :test do
  gem 'database_cleaner-sequel'
  gem 'rack-test'
end
