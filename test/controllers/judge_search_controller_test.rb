require "test_helper"

class JudgeSearchControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get judge_search_index_url
    assert_response :success
  end
end
