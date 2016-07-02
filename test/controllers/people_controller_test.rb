require "test_helper"

class PeopleControllerTest < ActionController::TestCase
  setup do
    sign_in(:guest)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "create with valid params" do
    post :create, params: {
      person: {
        name: "Annyong",
        email: "annyong@thebluth.co",
        password: "hello",
        password_confirmation: "hello"
      },
    }

    people(:guest).reload.tap do |person|
      assert_equal(person.name, "Annyong")
      assert_equal(person.email, "annyong@thebluth.co")
      refute_nil(person.password_digest)
    end

    assert_redirected_to passages_path
  end

  test "create with bogus params" do
    post :create, params: {
      person: {
        name: "Annyong",
        email: "annyong@thebluth.co",
        password: "hello",
        password_confirmation: "ello"
      },
    }

    people(:guest).reload.tap do |person|
      assert_equal(person.name, "GUEST")
      assert_nil(person.password_digest)
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

    patch :update, params: {
      person: {
        current_password: "password",
        password: "cornballer",
        password_confirmation: "cornballer"
      },
    }

    people(:michael).reload.tap do |person|
      assert person.authenticate("cornballer")
      refute person.authenticate("password")
    end
  end

  test "should effectively destroy the person" do
    sign_in(:michael)
    delete :destroy

    people(:michael).reload.tap do |person|
      assert_equal(person.name, "DESTROYED")
      assert_nil(person.email)
      assert_nil(person.password_digest)
    end
  end
end
