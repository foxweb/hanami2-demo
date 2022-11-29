require 'hanami'
require 'oj_parser'

module Bookshelf
  class App < Hanami::App
    config.middleware.use :body_parser, :json
    config.actions.format :json
  end
end
