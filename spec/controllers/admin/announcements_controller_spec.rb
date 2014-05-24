require 'spec_helper'

describe Admin::AnnouncementsController do
  let!(:admin) { create(:admin) }

  describe "GET 'index'" do
    let!(:announcement1) { create(:announcement) }
    let!(:announcement2) { create(:announcement) }

    context "#action" do
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

  describe "GET 'new'" do
    context "#action" do
      it "assigns a new post as @announcement" do
        sign_in admin
        get :new, {}
        assigns(:announcement).should be_a_new(Announcement)
      end
    end
  end
end
