require 'spec_helper'

describe Member::AccountController do
  it { get("/account").should route_to("member/account#index") }
end
