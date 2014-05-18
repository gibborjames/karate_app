require 'spec_helper'

describe Admin::MembersController do

  describe '#index' do
    let(:admin) { create(:admin) }
    let(:user) { create(:user) }

    # needs to add different scenario for this test
    context "when user is not admin" do
      it "should redirect_to root_path" do
        sign_in user
        get :index
        response.should redirect_to root_path
      end
    end

    context "when user is admin" do
      it "should return members index page" do
        sign_in admin
        get :index
        response.should be_success
      end
    end
  end
end
