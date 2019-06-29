require "application_system_test_case"

class SwimmersTest < ApplicationSystemTestCase
  setup do
    @swimmer = swimmers(:one)
  end

  test "visiting the index" do
    visit swimmers_url
    assert_selector "h1", text: "Swimmers"
  end

  test "creating a Swimmer" do
    visit swimmers_url
    click_on "New Swimmer"

    fill_in "Member number", with: @swimmer.member_number
    fill_in "Name", with: @swimmer.name
    fill_in "Password digest", with: @swimmer.password_digest
    click_on "Create Swimmer"

    assert_text "Swimmer was successfully created"
    click_on "Back"
  end

  test "updating a Swimmer" do
    visit swimmers_url
    click_on "Edit", match: :first

    fill_in "Member number", with: @swimmer.member_number
    fill_in "Name", with: @swimmer.name
    fill_in "Password digest", with: @swimmer.password_digest
    click_on "Update Swimmer"

    assert_text "Swimmer was successfully updated"
    click_on "Back"
  end

  test "destroying a Swimmer" do
    visit swimmers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Swimmer was successfully destroyed"
  end
end
