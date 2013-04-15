require "spec_helper"

describe DemandsController do
  describe "routing" do

    it "routes to #index" do
      get("/demands").should route_to("demands#index")
    end

    it "routes to #new" do
      get("/demands/new").should route_to("demands#new")
    end

    it "routes to #show" do
      get("/demands/1").should route_to("demands#show", :id => "1")
    end

    it "routes to #edit" do
      get("/demands/1/edit").should route_to("demands#edit", :id => "1")
    end

    it "routes to #create" do
      post("/demands").should route_to("demands#create")
    end

    it "routes to #update" do
      put("/demands/1").should route_to("demands#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/demands/1").should route_to("demands#destroy", :id => "1")
    end

  end
end
