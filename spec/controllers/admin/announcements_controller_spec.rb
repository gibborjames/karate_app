require 'spec_helper'

describe Admin::AnnouncementsController do

  describe "GET 'index'" do
    context "#action" do
      let!(:admin) { create(:admin) }
      
      it "should return success" do
        sign_in admin
        get :index
        response.should be_success
      end
    end
  end
end
