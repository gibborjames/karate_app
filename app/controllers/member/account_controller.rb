class Member::AccountController < ApplicationController
  before_filter :authenticate_user!

  layout 'member/application'

  def index
    @me = current_user
  end

  def edit

  end
end
