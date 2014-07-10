class UserMailer < ActionMailer::Base

  default from: 'info@shawty.com'

  def contact_us_email(contact)
    @contact = contact
    mail to: 'harry@ga.co', subject: 'NewContact'
  end
end
