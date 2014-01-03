require 'test_helper'

class HitsControllerTest < ActionController::TestCase
  test "should get hitdata" do
    get :hitdata
    assert_response :success
  end

end
