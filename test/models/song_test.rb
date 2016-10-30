require 'test_helper'

class SongTest < ActiveSupport::TestCase
  test "Songs have a name" do
  assert_equal("Shoebox", songs(:one).name)
  end
end
