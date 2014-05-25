module Api::V1
	class AnnouncementsController < ApplicationController
		before_filter :authorize_admin!
		def publish
      response = Announcement.publish(params)
      render :json => { success: { :id => response.id, :title => response.title, :status => response.is_announce } }
		end

		def hide
			response = Announcement.hide(params)
			render :json => { success: { :id => response.id, :title => response.title, :status => response.is_announce } }
		end
	end
end
