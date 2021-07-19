require 'test_helper'

class AboutControllerTest < ActionDispatch::IntegrationTest
  test "should get pages" do
    get about_pages_url
    assert_response :success
  end

end
