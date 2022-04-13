require 'rails_helper'

describe EventsController do
  describe "GET index" do
    it "routes to #index" do
      expect(:get => "/events").to route_to("events#index")
    end
  end
end
