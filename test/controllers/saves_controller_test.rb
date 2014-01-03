require 'test_helper'

class SavesControllerTest < ActionController::TestCase
  test "should get savedata" do
    get :savedata
    assert_response :success
  end

end
