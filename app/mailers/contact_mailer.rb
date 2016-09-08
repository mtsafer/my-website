class ContactMailer < ApplicationMailer

	def contact_martin(info)
    @info = info
    mail to: "mtsafer@gmail.com", subject: info.subject, from: info.email
  end

end
