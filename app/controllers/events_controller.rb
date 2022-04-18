class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def create
    @event = Event.new(event_params)
    @event.save
    redirect_back(fallback_location: root_path)
  end

  private

  def event_params
    params.permit(:start_date, :end_date, :title, :description, :teacher)
  end
end
