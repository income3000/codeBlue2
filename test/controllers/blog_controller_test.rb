require "test_helper"

class BlogControllerTest < ActionDispatch::IntegrationTest
  test "should get title:string" do
    get blog_title:string_url
    assert_response :success
  end

  test "should get post:text" do
    get blog_post:text_url
    assert_response :success
  end

  test "should get comment:text" do
    get blog_comment:text_url
    assert_response :success
  end
end
