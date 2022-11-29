require 'pathname'
SPEC_ROOT = Pathname(__dir__).realpath.freeze

ENV['HANAMI_ENV'] ||= 'test'
require 'hanami/prepare'

require_relative 'support/rspec'
require_relative 'support/requests'
require_relative 'support/database_cleaner'

require 'oj'

Oj.default_options = {
  symbol_keys: true,
  mode:        :compat
}
