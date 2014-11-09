class UserMailer < ActionMailer::Base
  default from: "creightonvaughn@gmail.com"

  def user_email(client, user)
    @client = client
    @user = user
    mail(to: @user.email, subject: "DEALS!")
  end
end
