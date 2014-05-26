require 'spec_helper'

describe Admin::AnnouncementsController do
  it { get("/admin/announcements").should route_to("admin/announcements#index") }
  it { get("/admin/announcements/1").should route_to("admin/announcements#show", :id => "1") }
  it { get("/admin/announcements/new").should route_to("admin/announcements#new") }
  it { post("/admin/announcements").should route_to("admin/announcements#create") }
end
