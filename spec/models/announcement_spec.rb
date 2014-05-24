require 'spec_helper'

describe Announcement do
  context "validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
  end

  context "relationships" do
    it { should belong_to(:user) }
  end
end
