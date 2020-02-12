require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get users_login_url
    assert_response :success
  end

  test "should get signin" do
    get users_signin_url
    assert_response :success
  end

  test "should get showcase" do
    get users_showcase_url
    assert_response :success
  end

end
