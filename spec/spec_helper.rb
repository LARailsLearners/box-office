
require 'rack/test'
require 'rspec'
require 'capybara'

require 'capybara/dsl'

ENV['RACK_ENV'] = 'test'

require File.expand_path '../../box-office.rb', __FILE__

module RSpecMixin
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end
end

RSpec.configure do |config|
  config.include RSpecMixin

  Capybara.app = Sinatra::Application.new

  config.include Capybara::DSL
  config.include RSpec::Expectations
  config.include RSpec::Matchers
end
