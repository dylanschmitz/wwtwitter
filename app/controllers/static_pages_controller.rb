class StaticPagesController < ApplicationController
	def main_page
		
		if user_signed_in?
			redirect_to new_tweet_path
		end
		@hometweetlink = "click here to tweet"
	end
end
