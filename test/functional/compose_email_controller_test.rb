require 'test_helper'

class ComposeEmailControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

end
