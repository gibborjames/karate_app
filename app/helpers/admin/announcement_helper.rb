module Admin::AnnouncementHelper

  def checking(announcement)
    if announcement.is_announce?
      return "Live"
    else
      return "Pending"
    end
  end
end
