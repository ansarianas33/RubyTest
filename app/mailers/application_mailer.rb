class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"
  layout "mailer"
  def send_email(email, subject, message)
    @message = message
    mail(to: email, subject: subject)
  end
end
