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
    @user = User.new
    @user.build_personal_info
    @user.build_other_info
    @user.build_case_of_emergency_info
  end
end
