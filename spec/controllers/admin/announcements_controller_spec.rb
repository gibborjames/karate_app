require 'spec_helper'

describe Admin::AnnouncementsController do
  let!(:admin) { create(:admin) }
  let(:valid_attributes) { { "title" => "MyTitle", "description" => "MyDescription", "user_id" => admin.id } }

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


  describe "POST 'create'" do

    context "with valid parameters" do
      it "should create new Announcement" do
        sign_in admin
        expect {
          post :create, {:announcement => valid_attributes}
        }.to change(Announcement, :count).by(1)
      end

       it "redirects to the  announcements index" do
        sign_in admin
        post :create, {:announcement => valid_attributes}
        response.should redirect_to admin_announcements_path
      end
    end

    context "with invalid parameters" do
      it "re-renders the 'new' template" do
        sign_in admin
        Announcement.any_instance.stub(:save).and_return(false)
        post :create, {:announcement => { "title" => nil }}
        response.should redirect_to new_admin_announcement_path
      end
    end
  end
end
