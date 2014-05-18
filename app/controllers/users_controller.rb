class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    binding.pry
    if @user.save
      redirect_to root_path
    else
      redirect_to registration_path
    end
  end

  private
    def user_params
      params.require(:user).permit(:facebook_account, :fullname, :email, :password)
    end
end
