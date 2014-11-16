require 'test_helper'

class PassagesControllerTest < ActionController::TestCase
  setup do
    sign_in(:buster)
  end

  teardown do
    sign_out
  end

  test "index should assign signed in person's passages" do
    get :index
    assert_response :success
    assert_equal(assigns(:passages), people(:buster).passages)
  end

  test "should show passage" do
    get :show, id: passages(:isaiah_40_8)
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "#create with a known query string that resolves to a known passage" do
    assert_no_difference("Passage.count", "it doesn't duplicate of the passage") do
      assert_no_difference("CachedPassageQuery.count", "it doesn't duplicate the cached passage query") do
        assert_difference("people(:buster).passages.count", 1, "it adds the passage to the person") do
          post :create, query_string: "mic 6:8"
        end
      end
    end

    assert_redirected_to passage_path(assigns(:passage))
  end

  test "#create with an unknown query string that resolves to a previously unknown passage" do
    assert_difference("Passage.count", 1, "it creates the passage") do
      assert_difference("CachedPassageQuery.count", 1, "it creates the cached passage query") do
        assert_difference("people(:buster).passages.count", 1, "it adds the passage to the person") do
          post :create, query_string: "John 1:1"
        end
      end
    end

    assert_redirected_to passage_path(assigns(:passage))
  end

  test "#create with an unknown query string that resolves to a previously known passage" do
    assert_no_difference("Passage.count", "it doesn't create a duplicate of the passage") do
      assert_difference("CachedPassageQuery.count", 1, "it creates the cached passage query") do
        assert_difference("people(:buster).passages.count", 1, "it adds the passage to the person") do
          post :create, query_string: "Micah 6:8"
        end
      end
    end

    assert_redirected_to passage_path(assigns(:passage))
  end

  test "#create with an unknown query string that cannot resolve to a passage" do
    assert_no_difference("Passage.count", "it doesn't create a duplicate of the passage") do
      assert_no_difference("CachedPassageQuery.count", "it creates the cached passage query") do
        assert_no_difference("people(:buster).passages.count", "it doesn't add junk to the person") do
          post :create, query_string: "Junk 99:100"
        end
      end
    end

    assert_response :not_found
  end

  test "destroying removes the passage from the person's list, but keeps the passage" do
    assert_difference("people(:buster).passages.count", -1, "removes the passage from the person") do
      assert_no_difference("Passage.count", "doesn't delete the passage itself") do
        delete :destroy, id: passages(:isaiah_40_8)
      end
    end

    assert_redirected_to :passages
  end
end
