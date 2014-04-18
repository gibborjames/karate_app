require 'spec_helper'

describe PagesController do
  it { get("/").should route_to("pages#index")}
end
