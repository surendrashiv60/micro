require 'test_helper'

class SystemModulesControllerTest < ActionController::TestCase
  setup do
    @system_module = system_modules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:system_modules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create system_module" do
    assert_difference('SystemModule.count') do
      post :create, system_module: { is_active: @system_module.is_active, system_module_description: @system_module.system_module_description, system_module_name: @system_module.system_module_name, system_module_order: @system_module.system_module_order }
    end

    assert_redirected_to system_module_path(assigns(:system_module))
  end

  test "should show system_module" do
    get :show, id: @system_module
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @system_module
    assert_response :success
  end

  test "should update system_module" do
    put :update, id: @system_module, system_module: { is_active: @system_module.is_active, system_module_description: @system_module.system_module_description, system_module_name: @system_module.system_module_name, system_module_order: @system_module.system_module_order }
    assert_redirected_to system_module_path(assigns(:system_module))
  end

  test "should destroy system_module" do
    assert_difference('SystemModule.count', -1) do
      delete :destroy, id: @system_module
    end

    assert_redirected_to system_modules_path
  end
end
