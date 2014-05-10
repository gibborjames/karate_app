require 'spec_helper'

describe PersonalInfo do
  context "validation" do

  end

  context "relationship" do
    it { should belong_to(:user) }
  end
end
