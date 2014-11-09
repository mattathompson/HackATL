class StaticPagesController < ApplicationController

  skip_before_filter :authenticate_user!
  before_action :find_clients

  def home
    if current_user || current_client
      if current_user
        redirect_to preferences_path
      else
        redirect_to events_path
      end
    else

    end

  end

  def about

  end

  def help

  end


  def logo
    @client = current_client
  end

  def savelogo
    current_client.update_attributes logo_params
    if current_client.save!
      redirect_to root_path
    else
      redirect_to :back
    end
  end

  def user_mail
    UserMailer.user_email(current_client).deliver
    redirect_to about_path
  end

  private

  def find_clients
    @clients = Client.all
  end

  def logo_params
    params.permit(:logo)
  end

end
