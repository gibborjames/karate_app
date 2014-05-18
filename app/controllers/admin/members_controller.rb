class Admin::MembersController < Admin::BaseController

  def index
    @users = User.all
  end
end
