class MainMailer < ApplicationMailer
  default to: 'refugeeguidestest@gmail.com'

  def send_submission(content)
    mail(subject: "Test!", body: "#{content}")
  end
end
