require "rails_helper"

RSpec.describe ProjectilesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/projectiles").to route_to("projectiles#index")
    end

    it "routes to #new" do
      expect(:get => "/projectiles/new").to route_to("projectiles#new")
    end

    it "routes to #show" do
      expect(:get => "/projectiles/1").to route_to("projectiles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/projectiles/1/edit").to route_to("projectiles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/projectiles").to route_to("projectiles#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/projectiles/1").to route_to("projectiles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/projectiles/1").to route_to("projectiles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/projectiles/1").to route_to("projectiles#destroy", :id => "1")
    end

  end
end
