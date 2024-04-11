require "test_helper"

class DaSearchControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get da_search_index_url
    assert_response :success
  end
end
