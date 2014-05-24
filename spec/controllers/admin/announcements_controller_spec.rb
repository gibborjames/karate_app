require 'spec_helper'

describe Admin::AnnouncementsController do

  describe "GET 'index'" do
    context "#action" do
      let!(:admin) { create(:admin) }
      let!(:announcement1) { create(:announcement) }
      let!(:announcement2) { create(:announcement) }

      it "should return success" do
        sign_in admin
        get :index
        response.should be_success
      end

      it "should show list of announcements" do
        sign_in admin
        get :index
        assigns(:announcements).should eq(Announcement.all)
      end
    end
  end
end
