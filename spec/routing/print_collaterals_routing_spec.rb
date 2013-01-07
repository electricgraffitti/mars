require "spec_helper"

describe PrintCollateralsController do
  describe "routing" do

    it "routes to #index" do
      get("/print_collaterals").should route_to("print_collaterals#index")
    end

    it "routes to #new" do
      get("/print_collaterals/new").should route_to("print_collaterals#new")
    end

    it "routes to #show" do
      get("/print_collaterals/1").should route_to("print_collaterals#show", :id => "1")
    end

    it "routes to #edit" do
      get("/print_collaterals/1/edit").should route_to("print_collaterals#edit", :id => "1")
    end

    it "routes to #create" do
      post("/print_collaterals").should route_to("print_collaterals#create")
    end

    it "routes to #update" do
      put("/print_collaterals/1").should route_to("print_collaterals#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/print_collaterals/1").should route_to("print_collaterals#destroy", :id => "1")
    end

  end
end
