require 'test_helper'

class DesignationsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Designation.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Designation.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Designation.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to designation_url(assigns(:designation))
  end

  def test_edit
    get :edit, :id => Designation.first
    assert_template 'edit'
  end

  def test_update_invalid
    Designation.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Designation.first
    assert_template 'edit'
  end

  def test_update_valid
    Designation.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Designation.first
    assert_redirected_to designation_url(assigns(:designation))
  end

  def test_destroy
    designation = Designation.first
    delete :destroy, :id => designation
    assert_redirected_to designations_url
    assert !Designation.exists?(designation.id)
  end
end
