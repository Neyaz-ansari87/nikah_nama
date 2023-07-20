require "application_system_test_case"

class NikahEntriesTest < ApplicationSystemTestCase
  setup do
    @nikah_entry = nikah_entries(:one)
  end

  test "visiting the index" do
    visit nikah_entries_url
    assert_selector "h1", text: "Nikah Entries"
  end

  test "creating a Nikah entry" do
    visit nikah_entries_url
    click_on "New Nikah Entry"

    fill_in "Bride name", with: @nikah_entry.bride_name
    fill_in "Bride parent name", with: @nikah_entry.bride_parent_name
    fill_in "Groom name", with: @nikah_entry.groom_name
    fill_in "Groom parent name", with: @nikah_entry.groom_parent_name
    fill_in "Meahar amount", with: @nikah_entry.meahar_amount
    fill_in "Nikah address", with: @nikah_entry.nikah_address
    fill_in "Nikah date", with: @nikah_entry.nikah_date
    fill_in "User", with: @nikah_entry.user_id
    click_on "Create Nikah entry"

    assert_text "Nikah entry was successfully created"
    click_on "Back"
  end

  test "updating a Nikah entry" do
    visit nikah_entries_url
    click_on "Edit", match: :first

    fill_in "Beide name", with: @nikah_entry.bride_name
    fill_in "Bride parent name", with: @nikah_entry.bride_parent_name
    fill_in "Groom name", with: @nikah_entry.groom_name
    fill_in "Groom parent name", with: @nikah_entry.groom_parent_name
    fill_in "Meahar amount", with: @nikah_entry.meahar_amount
    fill_in "Nikah address", with: @nikah_entry.nikah_address
    fill_in "Nikah date", with: @nikah_entry.nikah_date
    fill_in "User", with: @nikah_entry.user_id
    click_on "Update Nikah entry"

    assert_text "Nikah entry was successfully updated"
    click_on "Back"
  end

  test "destroying a Nikah entry" do
    visit nikah_entries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nikah entry was successfully destroyed"
  end
end
