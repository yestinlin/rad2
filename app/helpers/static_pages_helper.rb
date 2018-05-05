require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  test "should get home" do
    get static_pages_home_url
    assert_response :success
    assert_select "title", "Rmit News"
  end

  test "should get submit" do
    get static_pages_submit_url
    assert_response :success
    assert_select "title", "Submit | Rmit News"
  end

  test "should get comments" do
    get static_pages_comments_url
    assert_response :success
    assert_select "title", "Comments | Rmit News"
  end

  test "should get About" do
    get static_pages_about_url
    assert_response :success
    assert_select "title", "About | Rmit News"
  end
end
