require "test_helper"

class PeopleControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "create with valid params" do
    assert_difference("Person.count") do
      post :create, person: {
        name: "Annyong",
        email: "annyong@thebluth.co",
        password: "hello",
        password_confirmation: "hello"
      }
    end
    assert_redirected_to passages_path
  end

  test "create with bogus params" do
    assert_no_difference("Person.count") do
      post :create, person: {
        name: "Annyong",
        email: "annyong@thebluth.co",
        password: "hello",
        password_confirmation: "ello"
      }
    end
    assert_response(:success)
    assert_not_nil(flash[:error])
  end

  test "should get edit" do
    sign_in(:michael)
    get :edit
    assert_response :success
  end

  test "updating password" do
    sign_in(:michael)

    patch :update, person: {
      current_password: "password",
      password: "cornballer",
      password_confirmation: "cornballer"
    }

    people(:michael).reload.tap do |person|
      assert person.authenticate("cornballer")
      refute person.authenticate("password")
    end
  end

  test "should get destroy" do
    sign_in(:michael)
    assert_difference("Person.count", -1, "person should be deleted") do
      delete :destroy
    end
    assert_response :success
  end
end
