class Member::AccountController < ApplicationController
  before_filter :authenticate_user!

  layout 'member/application'
  def index

  end
end
