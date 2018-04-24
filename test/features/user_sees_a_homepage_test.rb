require './test/test_helper'

class HompageTest < CapybaraTestCase
  def test_user_can_see_the_hompage
    visit '/'

    assert page.has_content?('Welcome!')
    assert_equal 200, page.status_code
  end

  def test_user_can_see_error_message
    visit '/error'

    assert page.has_content?('Page not found.')
    assert_equal 404, page.status_code
  end

  def test_user_can_see_about_page
    visit '/about'

    assert page.has_content?("About Me!\nHere's some stuff to know.")
    assert_equal 200, page.status_code
  end
end
