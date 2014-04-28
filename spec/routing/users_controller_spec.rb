require 'spec_helper'

describe UsersController do
  it { post("/users").should route_to("users#create") }
end
