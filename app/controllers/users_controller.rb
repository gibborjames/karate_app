class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      redirect_to registration_path
    end
  end

  private
    def user_params
      params.require(:user).permit(:firstname, :middlename, :lastname, :email, :password)
    end
end
