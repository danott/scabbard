require "test_helper"

class GuestTest < ActiveSupport::TestCase
  def setup
    @guest = Guest.new(HashWithIndifferentAccess.new)
  end

  test "default" do
    assert_empty(@guest.passages)
  end
end
