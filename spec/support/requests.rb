require 'rack/test'

RSpec.shared_context 'Hanami app' do
  let(:app) { Hanami.app }

  def response_body
    Oj.load(last_response.body)
  end

  def content_type
    last_response.content_type
  end

  def content_type_json
    'application/json; charset=utf-8'
  end
end

RSpec.configure do |config|
  config.include Rack::Test::Methods, type: :request
  config.include_context 'Hanami app', type: :request
end
