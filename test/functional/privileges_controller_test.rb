require 'test_helper'

class PrivilegesControllerTest < ActionController::TestCase
  setup do
    @privilege = privileges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:privileges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create privilege" do
    assert_difference('Privilege.count') do
      post :create, privilege: { action: @privilege.action, controller: @privilege.controller, is_active: @privilege.is_active, privilege_description: @privilege.privilege_description, privilege_name: @privilege.privilege_name }
    end

    assert_redirected_to privilege_path(assigns(:privilege))
  end

  test "should show privilege" do
    get :show, id: @privilege
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @privilege
    assert_response :success
  end

  test "should update privilege" do
    put :update, id: @privilege, privilege: { action: @privilege.action, controller: @privilege.controller, is_active: @privilege.is_active, privilege_description: @privilege.privilege_description, privilege_name: @privilege.privilege_name }
    assert_redirected_to privilege_path(assigns(:privilege))
  end

  test "should destroy privilege" do
    assert_difference('Privilege.count', -1) do
      delete :destroy, id: @privilege
    end

    assert_redirected_to privileges_path
  end
end
