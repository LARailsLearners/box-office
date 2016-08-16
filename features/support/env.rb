
ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'box-office.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = Sinatra::Application

module Sinatra
  class Application
    class World
      include Capybara::DSL
      include RSpec::Expectations
      include RSpec::Matchers
    end
  end
end

World do
  Sinatra::Application::World.new
end
