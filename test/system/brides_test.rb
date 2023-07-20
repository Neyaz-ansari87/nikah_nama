require "application_system_test_case"

class BridesTest < ApplicationSystemTestCase
  setup do
    @bride = brides(:one)
  end

  test "visiting the index" do
    visit brides_url
    assert_selector "h1", text: "Brides"
  end

  test "creating a Bride" do
    visit brides_url
    click_on "New Bride"

    fill_in "First name", with: @bride.first_name
    fill_in "Last name", with: @bride.last_name
    fill_in "Surname", with: @bride.surname
    click_on "Create Bride"

    assert_text "Bride was successfully created"
    click_on "Back"
  end

  test "updating a Bride" do
    visit brides_url
    click_on "Edit", match: :first

    fill_in "First name", with: @bride.first_name
    fill_in "Last name", with: @bride.last_name
    fill_in "Surname", with: @bride.surname
    click_on "Update Bride"

    assert_text "Bride was successfully updated"
    click_on "Back"
  end

  test "destroying a Bride" do
    visit brides_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bride was successfully destroyed"
  end
end
