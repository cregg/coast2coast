require 'test_helper'

class GoalsControllerTest < ActionController::TestCase
  test "should get goalsdata" do
    get :goalsdata
    assert_response :success
  end

end
