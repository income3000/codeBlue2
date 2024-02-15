require "application_system_test_case"

class OfficersTest < ApplicationSystemTestCase
  setup do
    @officer = officers(:one)
  end

  test "visiting the index" do
    visit officers_url
    assert_selector "h1", text: "Officers"
  end

  test "should create officer" do
    visit officers_url
    click_on "New officer"

    fill_in "Badge", with: @officer.badge
    fill_in "City", with: @officer.city
    fill_in "Incident", with: @officer.incident
    fill_in "Name", with: @officer.name
    click_on "Create Officer"

    assert_text "Officer was successfully created"
    click_on "Back"
  end

  test "should update Officer" do
    visit officer_url(@officer)
    click_on "Edit this officer", match: :first

    fill_in "Badge", with: @officer.badge
    fill_in "City", with: @officer.city
    fill_in "Incident", with: @officer.incident
    fill_in "Name", with: @officer.name
    click_on "Update Officer"

    assert_text "Officer was successfully updated"
    click_on "Back"
  end

  test "should destroy Officer" do
    visit officer_url(@officer)
    click_on "Destroy this officer", match: :first

    assert_text "Officer was successfully destroyed"
  end
end
