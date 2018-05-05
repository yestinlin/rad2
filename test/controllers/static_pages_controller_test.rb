require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get login" do
    get static_pages_login_url
    assert_response :success
  end
  
 test "should get submit" do
    get static_pages_submitt_url
    assert_response :success
  end
end
