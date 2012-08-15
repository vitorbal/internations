require 'test_helper'

class GroupTest < ActiveSupport::TestCase
  test "group with users should not be deletable" do
    assert_equal groups(:developers).is_deletable?, false
  end

  test "group without users should be deletable" do
    assert groups(:germans).is_deletable?
  end
end
