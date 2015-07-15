require "rails_helper"

RSpec.describe PetnamesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/petnames").to route_to("petnames#index")
    end

    it "routes to #new" do
      expect(:get => "/petnames/new").to route_to("petnames#new")
    end

    it "routes to #show" do
      expect(:get => "/petnames/1").to route_to("petnames#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/petnames/1/edit").to route_to("petnames#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/petnames").to route_to("petnames#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/petnames/1").to route_to("petnames#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/petnames/1").to route_to("petnames#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/petnames/1").to route_to("petnames#destroy", :id => "1")
    end

  end
end
