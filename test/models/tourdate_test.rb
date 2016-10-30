require 'test_helper'

class TourdateTest < ActiveSupport::TestCase
  test "Tourdates have a venue" do
  assert_equal("PJ Molloys", tourdates(:one).venue)
  end
end
