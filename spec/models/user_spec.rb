require 'spec_helper'

describe User do
  context "validation" do
    it { should validate_presence_of(:firstname) }
    it { should validate_presence_of(:middlename) }
    it { should validate_presence_of(:lastname) }
  end
end
