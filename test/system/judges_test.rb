require "application_system_test_case"

class JudgesTest < ApplicationSystemTestCase
  setup do
    @judge = judges(:one)
  end

  test "visiting the index" do
    visit judges_url
    assert_selector "h1", text: "Judges"
  end

  test "should create judge" do
    visit judges_url
    click_on "New judge"

    fill_in "Casenumber", with: @judge.caseNumber
    fill_in "Casespecifics", with: @judge.caseSpecifics
    fill_in "Feedback", with: @judge.feedback
    fill_in "Judgement", with: @judge.judgement
    fill_in "Raceofoffender", with: @judge.raceOfoffender
    fill_in "Rating", with: @judge.rating
    click_on "Create Judge"

    assert_text "Judge was successfully created"
    click_on "Back"
  end

  test "should update Judge" do
    visit judge_url(@judge)
    click_on "Edit this judge", match: :first

    fill_in "Casenumber", with: @judge.caseNumber
    fill_in "Casespecifics", with: @judge.caseSpecifics
    fill_in "Feedback", with: @judge.feedback
    fill_in "Judgement", with: @judge.judgement
    fill_in "Raceofoffender", with: @judge.raceOfoffender
    fill_in "Rating", with: @judge.rating
    click_on "Update Judge"

    assert_text "Judge was successfully updated"
    click_on "Back"
  end

  test "should destroy Judge" do
    visit judge_url(@judge)
    click_on "Destroy this judge", match: :first

    assert_text "Judge was successfully destroyed"
  end
end
