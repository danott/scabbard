require "test_helper"

class SessionsControllerTest < ActionController::TestCase
  test "accessing the sign in form" do
    get :new
    assert_response :success
  end

  test "signing in" do
    post :create, params: { email: "michael@thebluth.co", password: "password" }
    assert_redirected_to passages_path
    assert_equal assigns(:person), people(:michael)
  end

  test "signing out" do
    sign_in(:michael)
    get :destroy
    assert_redirected_to sign_in_path
  end
end
