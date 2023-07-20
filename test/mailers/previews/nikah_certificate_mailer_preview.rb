# Preview all emails at http://localhost:3000/rails/mailers/nikah_certificate_mailer
class NikahCertificateMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/nikah_certificate_mailer/new_nikah_certificate
  def new_nikah_certificate
    NikahCertificateMailer.new_nikah_certificate
  end

end
