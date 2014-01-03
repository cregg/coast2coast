require 'test_helper'

class SpControllerTest < ActionController::TestCase
  test "should get spdata" do
    get :spdata
    assert_response :success
  end

end
