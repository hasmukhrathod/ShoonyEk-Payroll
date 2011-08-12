require 'test_helper'

class LeaveManagementsControllerTest < ActionController::TestCase
  setup do
    @leave_management = leave_managements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leave_managements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leave_management" do
    assert_difference('LeaveManagement.count') do
      post :create, :leave_management => @leave_management.attributes
    end

    assert_redirected_to leave_management_path(assigns(:leave_management))
  end

  test "should show leave_management" do
    get :show, :id => @leave_management.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @leave_management.to_param
    assert_response :success
  end

  test "should update leave_management" do
    put :update, :id => @leave_management.to_param, :leave_management => @leave_management.attributes
    assert_redirected_to leave_management_path(assigns(:leave_management))
  end

  test "should destroy leave_management" do
    assert_difference('LeaveManagement.count', -1) do
      delete :destroy, :id => @leave_management.to_param
    end

    assert_redirected_to leave_managements_path
  end
end
