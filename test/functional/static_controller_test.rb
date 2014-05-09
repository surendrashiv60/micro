require 'test_helper'

class StaticControllerTest < ActionController::TestCase
  test "should get about_us" do
    get :about_us
    assert_response :success
  end

end
