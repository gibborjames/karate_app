require 'spec_helper'

describe Admin::BaseController do

  describe '#index' do
    let!(:admin) { create(:admin) }

    context "redirect to admin path when user is admin" do
      it "should redirect to admin page" do
        sign_in admin
        get :index
        response.should be_success
      end
    end

    context "redirect to root path when user is not admin" do
      it "should redirect to home page" do
        # binding.pry
        # get :index
        # response.should be_success
      end
    end
  end
end
