class Admin::AnnouncementsController < Admin::BaseController

  def index
    @announcements = Announcement.all
  end

  def new
    @announcement = current_user.announcements.build
  end

  def create
    @announcement = current_user.announcements.build(announcement_params)
    if @announcement.save
      redirect_to admin_announcements_path
    else
      redirect_to new_admin_announcement_path
    end
  end

  private
    def announcement_params
      params.require(:announcement).permit(:title, :description, :user_id)
    end
end
