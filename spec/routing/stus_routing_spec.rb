require "rails_helper"

RSpec.describe StusController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/stus").to route_to("stus#index")
    end

    it "routes to #new" do
      expect(:get => "/stus/new").to route_to("stus#new")
    end

    it "routes to #show" do
      expect(:get => "/stus/1").to route_to("stus#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/stus/1/edit").to route_to("stus#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/stus").to route_to("stus#create")
    end

    it "routes to #update" do
      expect(:put => "/stus/1").to route_to("stus#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/stus/1").to route_to("stus#destroy", :id => "1")
    end

  end
end
