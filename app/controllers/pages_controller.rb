class PagesController < ApplicationController
  def index
  end
  def news
  end
  def announcement
  end
  def about_us
  end
  def registration
    @user = User.new
  end
end
