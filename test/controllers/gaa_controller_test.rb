require 'test_helper'

class GaaControllerTest < ActionController::TestCase
  test "should get gaadata" do
    get :gaadata
    assert_response :success
  end

end
