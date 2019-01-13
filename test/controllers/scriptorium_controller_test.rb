require 'test_helper'

class ScriptoriumControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get scriptorium_index_url
    assert_response :success
  end

end
