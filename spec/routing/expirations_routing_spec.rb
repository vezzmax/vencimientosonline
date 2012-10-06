require "spec_helper"

describe ExpirationsController do
  describe "routing" do

    it "routes to #index" do
      get("/expirations").should route_to("expirations#index")
    end

    it "routes to #new" do
      get("/expirations/new").should route_to("expirations#new")
    end

    it "routes to #show" do
      get("/expirations/1").should route_to("expirations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/expirations/1/edit").should route_to("expirations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/expirations").should route_to("expirations#create")
    end

    it "routes to #update" do
      put("/expirations/1").should route_to("expirations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/expirations/1").should route_to("expirations#destroy", :id => "1")
    end

  end
end
