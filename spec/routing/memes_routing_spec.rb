require "rails_helper"

RSpec.describe MemesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/memes").to route_to("memes#index")
    end


    it "routes to #show" do
      expect(:get => "/memes/1").to route_to("memes#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/memes").to route_to("memes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/memes/1").to route_to("memes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/memes/1").to route_to("memes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/memes/1").to route_to("memes#destroy", :id => "1")
    end

  end
end
