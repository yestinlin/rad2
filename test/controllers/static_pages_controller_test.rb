require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
 

  test "should get home" do
    get root_path
    assert_response :success
   assert_select "title", "Rmit News"
  end


  test "should get comments" do
    get comments_path
    assert_response :success
    assert_select "title", "Comments | Rmit News"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Rmit News"
  end
end

