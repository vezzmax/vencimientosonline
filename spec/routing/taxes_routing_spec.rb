require "spec_helper"

describe TaxesController do
  describe "routing" do

    it "routes to #index" do
      get("/taxes").should route_to("taxes#index")
    end

    it "routes to #new" do
      get("/taxes/new").should route_to("taxes#new")
    end

    it "routes to #show" do
      get("/taxes/1").should route_to("taxes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/taxes/1/edit").should route_to("taxes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/taxes").should route_to("taxes#create")
    end

    it "routes to #update" do
      put("/taxes/1").should route_to("taxes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/taxes/1").should route_to("taxes#destroy", :id => "1")
    end

  end
end
