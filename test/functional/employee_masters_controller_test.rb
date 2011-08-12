require 'test_helper'

class EmployeeMastersControllerTest < ActionController::TestCase
  setup do
    @employee_master = employee_masters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employee_masters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee_master" do
    assert_difference('EmployeeMaster.count') do
      post :create, :employee_master => @employee_master.attributes
    end

    assert_redirected_to employee_master_path(assigns(:employee_master))
  end

  test "should show employee_master" do
    get :show, :id => @employee_master.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @employee_master.to_param
    assert_response :success
  end

  test "should update employee_master" do
    put :update, :id => @employee_master.to_param, :employee_master => @employee_master.attributes
    assert_redirected_to employee_master_path(assigns(:employee_master))
  end

  test "should destroy employee_master" do
    assert_difference('EmployeeMaster.count', -1) do
      delete :destroy, :id => @employee_master.to_param
    end

    assert_redirected_to employee_masters_path
  end
end
