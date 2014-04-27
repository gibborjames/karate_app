require 'spec_helper'

describe Admin::BaseController do
  it { get("/admin").should route_to("admin/base#index") }
end
