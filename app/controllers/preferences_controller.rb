class PreferencesController < ApplicationController

  before_action :find_prefered_clients, except: [:show]
  before_action :authenticate_user!

  def show
    @prefered_clients = current_user.prefered_clients
  end


  def new
    @clients = Client.all

  end


  def create
    @client = Client.find params[:id]
    @preference = current_user.prefered_clients

    if @preference << @client
      redirect_to preferences_path
    else
      redirect_to :back
    end

  end


  def destroy
    @client = current_user.prefered_clients.find params[:client_id]

    if @client.destroy!
      redirect_to preferences_path
    else
      redirect_to :back
    end
  end

  private

  def find_prefered_clients
    @prefered_clients = Client.all
  end

end
