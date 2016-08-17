
require File.expand_path '../../test_helper.rb', __FILE__

class StartTest < MiniTest::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_root_path
    get '/'
    assert last_response.ok?
    assert_equal 'Hello world!', last_response.body
  end
end
