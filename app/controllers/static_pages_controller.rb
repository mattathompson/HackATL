class StaticPagesController < ApplicationController

  skip_before_filter :authenticate_user!
  before_action :find_clients

  def home
    @users = User.order(:first_name)
  end

  def about

  end

  def help

  end

  def user_mail
    UserMailer.user_email(current_client).deliver
    redirect_to about_path
  end

  private

  def find_clients
    @clients = Client.all
  end

end
