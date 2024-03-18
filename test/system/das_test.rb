require "application_system_test_case"

class DasTest < ApplicationSystemTestCase
  setup do
    @da = das(:one)
  end

  test "visiting the index" do
    visit das_url
    assert_selector "h1", text: "Das"
  end

  test "should create da" do
    visit das_url
    click_on "New da"

    fill_in "Casenumber", with: @da.caseNumber
    fill_in "City", with: @da.city
    fill_in "Feedback", with: @da.feedback
    fill_in "Name", with: @da.name
    fill_in "Rating", with: @da.rating
    click_on "Create Da"

    assert_text "Da was successfully created"
    click_on "Back"
  end

  test "should update Da" do
    visit da_url(@da)
    click_on "Edit this da", match: :first

    fill_in "Casenumber", with: @da.caseNumber
    fill_in "City", with: @da.city
    fill_in "Feedback", with: @da.feedback
    fill_in "Name", with: @da.name
    fill_in "Rating", with: @da.rating
    click_on "Update Da"

    assert_text "Da was successfully updated"
    click_on "Back"
  end

  test "should destroy Da" do
    visit da_url(@da)
    click_on "Destroy this da", match: :first

    assert_text "Da was successfully destroyed"
  end
end
