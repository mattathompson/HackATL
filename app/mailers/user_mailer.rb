class UserMailer < ActionMailer::Base
  default from: "creightonvaughn@gmail.com"

  def user_email(client)
    @client = client
    mail(to: "myclawmail@gmail.com", subject: "DEALS!")
  end
end
