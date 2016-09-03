class MainMailer < ApplicationMailer
  default to: 'refugeeguidestest@gmail.com'

  def send_submission(content)
    mail(subject: "Submit!", body: "#{content}")
  end
end
