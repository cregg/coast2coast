require 'test_helper'

class TeamOfTheWeeksControllerTest < ActionController::TestCase
  setup do
    @team_of_the_week = team_of_the_weeks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:team_of_the_weeks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create team_of_the_week" do
    assert_difference('TeamOfTheWeek.count') do
      post :create, team_of_the_week: {  }
    end

    assert_redirected_to team_of_the_week_path(assigns(:team_of_the_week))
  end

  test "should show team_of_the_week" do
    get :show, id: @team_of_the_week
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @team_of_the_week
    assert_response :success
  end

  test "should update team_of_the_week" do
    patch :update, id: @team_of_the_week, team_of_the_week: {  }
    assert_redirected_to team_of_the_week_path(assigns(:team_of_the_week))
  end

  test "should destroy team_of_the_week" do
    assert_difference('TeamOfTheWeek.count', -1) do
      delete :destroy, id: @team_of_the_week
    end

    assert_redirected_to team_of_the_weeks_path
  end
end
