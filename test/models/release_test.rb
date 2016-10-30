require 'test_helper'

class ReleaseTest < ActiveSupport::TestCase
  test "Releases have a name" do
  assert_equal("Decade EP", releases(:one).name)
  end
end
