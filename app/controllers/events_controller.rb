class EventsController < ApplicationController

  def index
    @events = current_user.events.all
  end

  def show

  end

  def new

  end

  def edit

  end

  def update

  end

  def destroy

  end

  def create

  end


  private


  def create_params

  end



end
