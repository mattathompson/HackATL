class EventsController < ApplicationController
  before_action :authenticate_client!

  def index
    @events = current_client.events.all
  end

  def show
    @event = current_client.events.find params[:id]
  end

  def new
    @event = current_client.events.new
  end

  def edit
    @event = current_client.events.find params[:id]
  end

  def update
    @event = current_client.events.find params[:id]
    @event.update_attributes create_params

    if @event.save!
      redirect_to @event
    else
      redirect_to :back
    end
  end

  def destroy
    @event = current_client.events.find params[:id]

    if @event.destroy!
      redirect_to events_path
    else
      redirect_to :back
    end

  end

  def create
    @event = current_client.events.new create_params

    if @event.save!
      redirect_to @event
    else
      redirect_to :back
    end

  end


  private


  def create_params
    params[:event].permit(:name, :details, :main)
  end



end
