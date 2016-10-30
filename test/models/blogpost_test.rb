require 'test_helper'

class BlogpostTest < ActiveSupport::TestCase
  test "Blogposts have a newpost" do
  assert_equal("Hello!", blogposts(:one).newpost)
  end
end
