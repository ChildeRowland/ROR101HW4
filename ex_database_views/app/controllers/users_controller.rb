class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		id = params[:id]
		@user = User.find(id)
	end

	#maps to delete method in the view.
	def destroy

		puts "params are:" + params.inspect

		# u = User.find(params[:id])
		# if u.delete
		# 	flash[:notice] = "User Deleted"
		# else
		# 	flash[:notice] = "José No Way"
		# end
		# redirect_to users_path
	end

end
