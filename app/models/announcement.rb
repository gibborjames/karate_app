class Announcement < ActiveRecord::Base

  validates :title, presence: true
  validates :description, presence: true

  belongs_to :user

  def self.publish(params)
    announcement = Announcement.find(params[:id])
    if announcement.user.present?
      announcement.is_announce = true
      announcement.save
    else
      announcement
    end
    return announcement
  end


  def self.hide(params)
    announcement = Announcement.find(params[:id])
    if announcement.user.present?
      announcement.is_announce = false
      announcement.save
    else
      announcement
    end
    return announcement
  end
end
