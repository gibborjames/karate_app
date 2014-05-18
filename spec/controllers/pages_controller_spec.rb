require 'spec_helper'

describe PagesController do

  describe "#index" do
    let(:user) { create(:user) }
    let(:admin) { create(:admin) }
    it "it should return index page" do
      get :index
      response.should be_success
    end

    context "when user is admin" do
      it "should return admin page" do
        sign_in admin
        get :index
        response.should redirect_to admin_root_path
      end
    end

    context "when user is not admin" do
      it "should return member page" do
        sign_in user
        get :index
        response.should redirect_to account_path
      end
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

  describe "#registration" do
    it 'assign a new user to @user' do
      get :registration
      expect(assigns(:user)).to be_a_new(User)
    end

    it "it should return registration page" do
      get :registration
      response.should be_success
    end
  end
end
