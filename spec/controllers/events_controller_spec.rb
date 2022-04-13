require 'rails_helper'

describe EventsController do
  describe "GET index" do
    it "routes to #index" do
      expect(:get => "/events").to route_to("events#index")
    end
  end

  describe "POST create" do
    it "should create a new Event" do
      expect {
        post :create, params: { event: event = Event.create!(start_date: DateTime.now, end_date: DateTime.now + 1, title: "test title", description: "test desc", teacher: "ms test") }
        }.to change(Event, :count).by(1)
    end
  end
end
