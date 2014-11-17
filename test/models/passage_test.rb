require "test_helper"

class PassageTest < ActiveSupport::TestCase
  def setup
    @passage = passages(:isaiah_40_8)
  end

  test "#html" do
    assert(@passage.html.html_safe?, "#html should be html_safe by default")
  end

  test "#heading=" do
    previous = @passage.sha
    @passage.heading = "Something Else"
    assert(@passage.sha != previous, "setting heading should change sha")
  end

  test "#sha=" do
    assert_raises(StandardError) do
      @passage.sha = "anything"
    end
  end
end
