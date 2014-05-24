class Admin::AnnouncementsController < Admin::BaseController

  def index
    @announcements = Announcement.all
  end
end
