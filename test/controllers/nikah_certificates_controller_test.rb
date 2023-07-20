require "test_helper"

class NikahCertificatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nikah_certificate = nikah_certificates(:one)
  end

  test "should get index" do
    get nikah_certificates_url
    assert_response :success
  end

  test "should get new" do
    get new_nikah_certificate_url
    assert_response :success
  end

  test "should create nikah_certificate" do
    assert_difference('NikahCertificate.count') do
      post nikah_certificates_url, params: { nikah_certificate: { bride_name: @nikah_certificate.bride_name, groom_name: @nikah_certificate.groom_name } }
    end

    assert_redirected_to nikah_certificate_url(NikahCertificate.last)
  end

  test "should show nikah_certificate" do
    get nikah_certificate_url(@nikah_certificate)
    assert_response :success
  end

  test "should get edit" do
    get edit_nikah_certificate_url(@nikah_certificate)
    assert_response :success
  end

  test "should update nikah_certificate" do
    patch nikah_certificate_url(@nikah_certificate), params: { nikah_certificate: { bride_name: @nikah_certificate.bride_name, groom_name: @nikah_certificate.groom_name } }
    assert_redirected_to nikah_certificate_url(@nikah_certificate)
  end

  test "should destroy nikah_certificate" do
    assert_difference('NikahCertificate.count', -1) do
      delete nikah_certificate_url(@nikah_certificate)
    end

    assert_redirected_to nikah_certificates_url
  end
end
