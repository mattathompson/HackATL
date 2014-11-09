class PreferencesController < ApplicationController

  before_action :find_prefered_clients, except: [:show]
  before_action :authenticate_user!

  def show
    # my_preferences = Preference.where("user_id = ?", current_user.id).pluck(:client_id)
    # @prefered_clients = Client.where(:id => my_preferences)
    @prefered_clients = current_user.prefered_clients.order("name")
    prefered_ids = @prefered_clients.ids
    @clients_to_add = Client.where.not(:id => prefered_ids).order("name")
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
    @preference = current_user.preferences.find params[:client_id]

    if @preference.destroy!
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
