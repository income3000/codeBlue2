require "test_helper"

class DasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @da = das(:one)
  end

  test "should get index" do
    get das_url
    assert_response :success
  end

  test "should get new" do
    get new_da_url
    assert_response :success
  end

  test "should create da" do
    assert_difference("Da.count") do
      post das_url, params: { da: { caseNumber: @da.caseNumber, city: @da.city, feedback: @da.feedback, name: @da.name, rating: @da.rating } }
    end

    assert_redirected_to da_url(Da.last)
  end

  test "should show da" do
    get da_url(@da)
    assert_response :success
  end

  test "should get edit" do
    get edit_da_url(@da)
    assert_response :success
  end

  test "should update da" do
    patch da_url(@da), params: { da: { caseNumber: @da.caseNumber, city: @da.city, feedback: @da.feedback, name: @da.name, rating: @da.rating } }
    assert_redirected_to da_url(@da)
  end

  test "should destroy da" do
    assert_difference("Da.count", -1) do
      delete da_url(@da)
    end

    assert_redirected_to das_url
  end
end
