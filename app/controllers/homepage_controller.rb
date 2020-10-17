class HomepageController < ApplicationController
	def index
		begin
	      if params[:user_id]
	        flickr = Flickr.new ENV["flickr_key"], ENV["flickr_secret"]
	        @photos = flickr.photos.search(user_id: params[:user_id])
	      end
    	rescue
      flash.now[:warning] = "Invalid user."
    	end
	end
		  
end

