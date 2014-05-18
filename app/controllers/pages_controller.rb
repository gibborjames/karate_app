class PagesController < ApplicationController

  def index
    if user_signed_in?
      if current_user.admin?
        redirect_to admin_root_path
      else
        redirect_to account_path
      end
    else

    end
  end
  def news
  end
  def announcement
  end
  def about_us
  end
  def registration
    # binding.pry
    @user = User.new
    # binding.pry
    # @user.personal_info.build
    # binding.pry
    # @user.other_info.build
    # binding.pry
    # @user.case_of_emergency_info.build
    # binding.pry
  end
end
