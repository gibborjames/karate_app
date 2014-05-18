require 'spec_helper'

describe Admin::BaseController do

  describe '#index' do
    let!(:admin) { create(:admin) }
    let!(:user) { create(:user) }

    context "when user is admin" do
      it "should redirect to admin page" do
        sign_in admin
        get :index
        response.should be_success
      end
    end

    context "when user is not admin" do
      it "should redirect to home page" do
        sign_in user
        get :index
        response.should redirect_to root_path
      end
    end
  end
end
