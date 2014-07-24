class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		id = params[:id]
		@user = User.find(id)
	end

	def user_show_posts
		id = params[:id]
		@user = User.find(id)
	end

	def destroy
		u = User.find(params[:id])
		if u.delete
			flash[:notice] = "User has been deleted."
			redirect_to home_path
		else
			flash[:notice] = "Something went wrong."
		end
	end

end
