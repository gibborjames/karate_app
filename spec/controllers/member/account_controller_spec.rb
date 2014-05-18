require 'spec_helper'

describe Member::AccountController do

  describe "#index" do
    let!(:user) { create(:user) }
    let!(:admin) { create(:user) }

    context "when user is member" do
      it "should redirect to account page" do
        sign_in user
        get :index
        response.should be_success
      end
    end

    context "when user is admin" do
      it "should redirect to account page" do
        sign_in admin
        get :index
        response.should be_success
      end
    end

    it "assigns current user to @me" do
      sign_in user
      get :index
      assigns(:me).should eql(user)
    end
  end
end
