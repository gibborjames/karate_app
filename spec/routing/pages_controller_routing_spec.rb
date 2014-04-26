require 'spec_helper'

describe PagesController do
  it { get("/").should route_to("pages#index") }
  it { get("/news").should route_to("pages#news") }
  it { get("/announcement").should route_to("pages#announcement") }
  it { get("/about_us").should route_to("pages#about_us")}
  it { get("/organization_registration").should route_to("pages#organization_registration")}
  it { get("/member_registration").should route_to("pages#member_registration")}
end
