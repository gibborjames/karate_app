require 'spec_helper'

describe Admin::MembersController do

  describe '#index' do
    let(:admin) { create(:admin) }

    # needs to add different scenario for this test
    it "should return members index page" do
      sign_in admin
      get :index
      response.should be_success
    end
  end
end
