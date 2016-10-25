class PostsController < ApplicationController
	
	def show
		@user = User.find(params[:user_id])
		@post = Post.find(params[:id])
	end

	def destroy
		Post.find(params[:id]).destroy
		redirect_to user_path
	end

end
