module Api::V1
	class AnnouncementsController < ApplicationController

		def publish
      response = Announcement.publish(params)
      render :json => { success: { } }
		end
	end
end
