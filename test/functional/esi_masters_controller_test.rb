require 'test_helper'

class EsiMastersControllerTest < ActionController::TestCase
  setup do
    @esi_master = esi_masters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:esi_masters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create esi_master" do
    assert_difference('EsiMaster.count') do
      post :create, :esi_master => @esi_master.attributes
    end

    assert_redirected_to esi_master_path(assigns(:esi_master))
  end

  test "should show esi_master" do
    get :show, :id => @esi_master.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @esi_master.to_param
    assert_response :success
  end

  test "should update esi_master" do
    put :update, :id => @esi_master.to_param, :esi_master => @esi_master.attributes
    assert_redirected_to esi_master_path(assigns(:esi_master))
  end

  test "should destroy esi_master" do
    assert_difference('EsiMaster.count', -1) do
      delete :destroy, :id => @esi_master.to_param
    end

    assert_redirected_to esi_masters_path
  end
end
