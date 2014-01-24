require 'test_helper'

class ChatControllerTest < ActionController::TestCase
  test "should get open" do
    get :open
    assert_response :success
  end

end
