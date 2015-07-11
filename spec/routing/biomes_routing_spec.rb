require "rails_helper"

RSpec.describe BiomesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/biomes").to route_to("biomes#index")
    end

    it "routes to #new" do
      expect(:get => "/biomes/new").to route_to("biomes#new")
    end

    it "routes to #show" do
      expect(:get => "/biomes/1").to route_to("biomes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/biomes/1/edit").to route_to("biomes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/biomes").to route_to("biomes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/biomes/1").to route_to("biomes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/biomes/1").to route_to("biomes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/biomes/1").to route_to("biomes#destroy", :id => "1")
    end

  end
end
