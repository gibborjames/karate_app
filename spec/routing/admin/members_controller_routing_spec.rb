require 'spec_helper'

describe Admin::MembersController do
  it { get("/admin/members").should route_to("admin/members#index") }
end
