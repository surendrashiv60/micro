require 'test_helper'

class SmsTemplatesControllerTest < ActionController::TestCase
  setup do
    @sms_template = sms_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sms_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sms_template" do
    assert_difference('SmsTemplate.count') do
      post :create, sms_template: { message: @sms_template.message }
    end

    assert_redirected_to sms_template_path(assigns(:sms_template))
  end

  test "should show sms_template" do
    get :show, id: @sms_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sms_template
    assert_response :success
  end

  test "should update sms_template" do
    put :update, id: @sms_template, sms_template: { message: @sms_template.message }
    assert_redirected_to sms_template_path(assigns(:sms_template))
  end

  test "should destroy sms_template" do
    assert_difference('SmsTemplate.count', -1) do
      delete :destroy, id: @sms_template
    end

    assert_redirected_to sms_templates_path
  end
end
