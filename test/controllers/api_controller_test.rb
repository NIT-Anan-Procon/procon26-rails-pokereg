require 'test_helper'

class ApiControllerTest < ActionController::TestCase
  test "should get pay_off" do
    get :pay_off
    assert_response :success
  end

end
