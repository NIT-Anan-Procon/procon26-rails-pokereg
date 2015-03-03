require 'test_helper'

class ThingsControllerTest < ActionController::TestCase
  test "should get charts" do
    get :charts
    assert_response :success
  end

end
