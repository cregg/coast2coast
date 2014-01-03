require 'test_helper'

class PlusMinusControllerTest < ActionController::TestCase
  test "should get pmdata" do
    get :pmdata
    assert_response :success
  end

end
