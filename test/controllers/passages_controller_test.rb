require 'test_helper'

class PassagesControllerTest < ActionController::TestCase
  setup do
    @passage = passages(:one)
  end

  test "should get index" do
    skip
    get :index
    assert_response :success
    assert_not_nil assigns(:passages)
  end

  test "should get new" do
    skip
    get :new
    assert_response :success
  end

  test "should create passage" do
    skip
    assert_difference('Passage.count') do
      post :create, passage: {  }
    end

    assert_redirected_to passage_path(assigns(:passage))
  end

  test "should show passage" do
    skip
    get :show, id: @passage
    assert_response :success
  end

  test "should get edit" do
    skip
    get :edit, id: @passage
    assert_response :success
  end

  test "should update passage" do
    skip
    patch :update, id: @passage, passage: {  }
    assert_redirected_to passage_path(assigns(:passage))
  end

  test "should destroy passage" do
    skip
    assert_difference('Passage.count', -1) do
      delete :destroy, id: @passage
    end

    assert_redirected_to passages_path
  end
end
