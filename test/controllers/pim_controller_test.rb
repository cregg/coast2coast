require 'test_helper'

class PimControllerTest < ActionController::TestCase
  test "should get pimdata" do
    get :pimdata
    assert_response :success
  end

end
