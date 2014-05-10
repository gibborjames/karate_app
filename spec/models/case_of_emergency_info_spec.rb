require 'spec_helper'

describe CaseOfEmergencyInfo do
  context "validation" do

  end

  context "relationship" do
    it { should belong_to(:user) }
  end
end
