require 'spec_helper'

describe Admin::AnnouncementsController do
  it { get("/admin/announcements").should route_to("admin/announcements#index") }
end
