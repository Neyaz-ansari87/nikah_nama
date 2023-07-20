class NikahCertificateMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.nikah_certificate_mailer.new_nikah_certificate.subject
  #
   def new_nikah_certificate
    # nikah_certificate = nikah_certificate.find(nikah_certificate_id)
    # @nikah_certificate = nikah_certificate.first
    nikah_certificate = NikahCertificate.first
    attachments["nikah_certificate_#{nikah_certificate.id}.pdf"] = WickedPdf.new.pdf_from_string(
      render_to_string(template: 'nikah_certificates/show.html.erb', layout: 'pdf.html.erb', pdf: 'filename')
    )
    mail to: "to@example.org"
  end
  # def new_nikah_certificate
  #   @greeting = "Hi"

  #   mail to: "to@example.org"
  # end
end
