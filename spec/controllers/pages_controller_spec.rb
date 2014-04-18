require 'spec_helper'

describe PagesController do

  describe "#index" do
    it "it should return index page" do
      get 'index'
      response.should be_success
    end
  end

  describe "#news" do
    it "it should return news pages" do
      get :news
      response.should be_success
    end
  end

  describe "#announcement" do
    it "it should return announcement pages" do
      get :announcement
      response.should be_success
    end
  end

  describe "#about_us" do
    it "it should return about us pages" do
      get :about_us
      response.should be_success
    end
  end
end
