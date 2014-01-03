require 'test_helper'

class AssistsControllerTest < ActionController::TestCase
  test "should get assistsdata" do
    get :assistsdata
    assert_response :success
  end

end
