require "spec_helper"

describe RoomRatesController do
  describe "routing" do

    it "routes to #index" do
      get("/room_rates").should route_to("room_rates#index")
    end

    it "routes to #new" do
      get("/room_rates/new").should route_to("room_rates#new")
    end

    it "routes to #show" do
      get("/room_rates/1").should route_to("room_rates#show", :id => "1")
    end

    it "routes to #edit" do
      get("/room_rates/1/edit").should route_to("room_rates#edit", :id => "1")
    end

    it "routes to #create" do
      post("/room_rates").should route_to("room_rates#create")
    end

    it "routes to #update" do
      put("/room_rates/1").should route_to("room_rates#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/room_rates/1").should route_to("room_rates#destroy", :id => "1")
    end

  end
end
