require "spec_helper"

describe Admin::ThemesController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/themes").should route_to("admin/themes#index")
    end

    it "routes to #new" do
      get("/admin/themes/new").should route_to("admin/themes#new")
    end

    it "routes to #show" do
      get("/admin/themes/1").should route_to("admin/themes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/themes/1/edit").should route_to("admin/themes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/themes").should route_to("admin/themes#create")
    end

    it "routes to #update" do
      put("/admin/themes/1").should route_to("admin/themes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/themes/1").should route_to("admin/themes#destroy", :id => "1")
    end

  end
end
