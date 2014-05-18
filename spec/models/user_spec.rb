require 'spec_helper'

describe User do
  context "validation" do
    it { should validate_presence_of(:firstname) }
    it { should validate_presence_of(:middlename) }
    it { should validate_presence_of(:lastname) }
    it { should validate_presence_of(:facebook_account) }
  end

  context "relationship" do
    it { should have_one(:personal_info) }
    it { should have_one(:other_info) }
    it { should have_one(:case_of_emergency_info) }
  end

  context "methods" do
    describe "#fullname" do
      it "returns fullname of users" do
        james = create(:user)
        rose = create(:user)

        james.fullname.should eql("#{james.lastname} #{james.firstname}")
        rose.fullname.should eql("#{james.lastname} #{james.firstname}")
      end
    end
  end
end
