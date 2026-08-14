require "test_helper"

class NoticeTest < ActiveSupport::TestCase
  test "invalid without a title" do
    notice = Notice.new(body: "x", author_name: "x", category: "General")
    assert_not notice.valid?
  end

  test "pinned_first scope orders pinned notices before unpinned" do
    unpinned = Notice.create!(title: "A", body: "b", author_name: "a", category: "General", pinned: false)
    pinned = Notice.create!(title: "B", body: "b", author_name: "a", category: "General", pinned: true)
    assert_equal pinned, Notice.pinned_first.first
  end
end
