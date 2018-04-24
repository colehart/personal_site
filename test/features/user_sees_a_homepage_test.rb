require './test/test_helper'

class HompageTest < CapybaraTestCase
  def test_user_can_see_the_hompage
    visit '/'

    assert page.has_content?('Welcome!')
    assert_equal 200, page.status_code
  end
end
