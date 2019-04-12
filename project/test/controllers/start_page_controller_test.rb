require 'test_helper'

class StartPageControllerTest < ActionDispatch::IntegrationTest
  test "should get home_page" do
    get start_page_home_page_url
    assert_response :success
  end

end
