require 'test_helper'

class WinsControllerTest < ActionController::TestCase
  test "should get winsdata" do
    get :winsdata
    assert_response :success
  end

end
