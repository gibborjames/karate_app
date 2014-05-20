require 'spec_helper'

describe Member::AccountController do
  let!(:user) { create(:user) }
  let!(:admin) { create(:user) }

  describe "#index" do
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

  describe "#action" do
    describe "#edit" do
      context "when user try to access account/edit" do
        it "should return success" do
          sign_in user
          get :edit, :id => user
          response.should be_success
        end
      end
    end
  end
end
