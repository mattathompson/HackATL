class StaticPagesController < ApplicationController
  before_action :find_clients

  def home

  end

  def about

  end

  def help

  end

  private

  def find_clients
    @clients = Client.all
  end


end
