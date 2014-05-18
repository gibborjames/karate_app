class Admin::MembersController < Admin::BaseController

  def index
    @users = User.where(admin: false).all
  end
end
