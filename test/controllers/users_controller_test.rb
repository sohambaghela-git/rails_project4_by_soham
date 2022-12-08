require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get user_home" do
    get users_user_home_url
    assert_response :success
  end
end
