require "rails_helper"

RSpec.describe SyndromesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/syndromes").to route_to("syndromes#index")
    end

    it "routes to #new" do
      expect(:get => "/syndromes/new").to route_to("syndromes#new")
    end

    it "routes to #show" do
      expect(:get => "/syndromes/1").to route_to("syndromes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/syndromes/1/edit").to route_to("syndromes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/syndromes").to route_to("syndromes#create")
    end

    it "routes to #update" do
      expect(:put => "/syndromes/1").to route_to("syndromes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/syndromes/1").to route_to("syndromes#destroy", :id => "1")
    end

  end
end
