class UsersController < ApplicationController

	def index
		@user = User.all
	end

	def show
		id = params[:id]
		@user = User.find(id)
	end

	def user_show_posts
		
	end

end
