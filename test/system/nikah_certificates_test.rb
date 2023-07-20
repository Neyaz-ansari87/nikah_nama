require "application_system_test_case"

class NikahCertificatesTest < ApplicationSystemTestCase
  setup do
    @nikah_certificate = nikah_certificates(:one)
  end

  test "visiting the index" do
    visit nikah_certificates_url
    assert_selector "h1", text: "Nikah Certificates"
  end

  test "creating a Nikah certificate" do
    visit nikah_certificates_url
    click_on "New Nikah Certificate"

    fill_in "Bride name", with: @nikah_certificate.bride_name
    fill_in "groom name", with: @nikah_certificate.groom_name
    click_on "Create Nikah certificate"

    assert_text "Nikah certificate was successfully created"
    click_on "Back"
  end

  test "updating a Nikah certificate" do
    visit nikah_certificates_url
    click_on "Edit", match: :first

    fill_in "Bride name", with: @nikah_certificate.bride_name
    fill_in "groom name", with: @nikah_certificate.groom_name
    click_on "Update Nikah certificate"

    assert_text "Nikah certificate was successfully updated"
    click_on "Back"
  end

  test "destroying a Nikah certificate" do
    visit nikah_certificates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nikah certificate was successfully destroyed"
  end
end
