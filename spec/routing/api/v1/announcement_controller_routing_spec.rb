require 'spec_helper'

describe Api::V1::AnnouncementsController do
  it { put("/api/v1/announcements/1/publish").should route_to("api/v1/announcements#publish", :id => "1") }
end
