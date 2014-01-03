require 'test_helper'

class BlocksControllerTest < ActionController::TestCase
  test "should get blocksdata" do
    get :blocksdata
    assert_response :success
  end

end
