require 'spec_helper'

describe OtherInfo do
  context "validation" do

  end

  context "relationship" do
    it { should have_one(:user) }
  end
end
