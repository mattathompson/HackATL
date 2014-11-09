class UserMailer < ActionMailer::Base
  default from: "creightonvaughn@gmail.com"

  def user_email()
    #binding.pry
    #@user = user
    mail(to: "myclawmail@gmail.com", subject: "DEALS!")
  end
end
