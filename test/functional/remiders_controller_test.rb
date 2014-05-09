require 'test_helper'

class RemidersControllerTest < ActionController::TestCase
  setup do
    @remider = remiders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:remiders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create remider" do
    assert_difference('Remider.count') do
      post :create, remider: { at_date: @remider.at_date, at_time: @remider.at_time, description: @remider.description, message: @remider.message, recurrence: @remider.recurrence, title: @remider.title }
    end

    assert_redirected_to remider_path(assigns(:remider))
  end

  test "should show remider" do
    get :show, id: @remider
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @remider
    assert_response :success
  end

  test "should update remider" do
    put :update, id: @remider, remider: { at_date: @remider.at_date, at_time: @remider.at_time, description: @remider.description, message: @remider.message, recurrence: @remider.recurrence, title: @remider.title }
    assert_redirected_to remider_path(assigns(:remider))
  end

  test "should destroy remider" do
    assert_difference('Remider.count', -1) do
      delete :destroy, id: @remider
    end

    assert_redirected_to remiders_path
  end
end
