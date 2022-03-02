require "rails_helper"

RSpec.describe PointTablesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/point_tables").to route_to("point_tables#index")
    end

    it "routes to #new" do
      expect(get: "/point_tables/new").to route_to("point_tables#new")
    end

    it "routes to #show" do
      expect(get: "/point_tables/1").to route_to("point_tables#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/point_tables/1/edit").to route_to("point_tables#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/point_tables").to route_to("point_tables#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/point_tables/1").to route_to("point_tables#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/point_tables/1").to route_to("point_tables#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/point_tables/1").to route_to("point_tables#destroy", id: "1")
    end
  end
end
