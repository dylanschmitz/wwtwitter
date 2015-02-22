class RelationshipsController < ApplicationController

	def create
		@user = User.find(relationship_params[:followed_id])
		if current_user.follow(@user)
			flash[:success] = "you are now following #{@user.email}"
		else
			flash[:danger] = "ooo you cant follow this person, sorry dude"
		end
		redirect_to tweets_path
	end

	private

	def relationship_params
		params.require(:relationship).permit(:followed_id)
	end

end

