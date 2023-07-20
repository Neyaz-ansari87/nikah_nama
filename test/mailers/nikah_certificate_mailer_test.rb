require "test_helper"

class NikahCertificateMailerTest < ActionMailer::TestCase
  test "new_nikah_certificate" do
    mail = NikahCertificateMailer.new_nikah_certificate
    assert_equal "New nikah certificate", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
