require 'test_helper'

class PppControllerTest < ActionController::TestCase
  test "should get pppdata" do
    get :pppdata
    assert_response :success
  end

end
