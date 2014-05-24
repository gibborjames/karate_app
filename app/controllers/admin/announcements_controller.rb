class Admin::AnnouncementsController < Admin::BaseController

  def index
    @announcements = Announcement.all
  end

  def new
    @announcement = current_user.announcements.build
  end
end
