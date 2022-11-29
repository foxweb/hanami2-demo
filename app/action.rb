# auto_register: false
require 'hanami/action'

module Bookshelf
  class Action < Hanami::Action
    config.handle_exception ROM::TupleCountMismatchError => :handle_not_found

  private

    def handle_not_found(_request, response, _exception)
      response.status = 404
      response.format = :json
      response.body = { error: 'not_found' }.to_json
    end

    def render_created(resource, response)
      raise ArgumentError if resource[:id].nil?

      response.headers['X-Created-Resource-Id'] = resource[:id].to_s
      response.status = 201
      response.body = resource.to_json
    end

    def render_errors(errors)
      render_raw 422, errors.to_h
    end

    def render_raw(status, body)
      halt(status, Oj.dump(body))
    end
  end
end
