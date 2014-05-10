require 'spec_helper'

describe User do
  context "validation" do
    it { should validate_presence_of(:firstname) }
    it { should validate_presence_of(:middlename) }
    it { should validate_presence_of(:lastname) }
    it { should validate_presence_of(:facebook_account) }
  end

  context "relationship" do
    it { should belong_to(:personal_info) }
    it { should belong_to(:other_info) }
    it { should belong_to(:case_of_emergency_info) }
  end
end
