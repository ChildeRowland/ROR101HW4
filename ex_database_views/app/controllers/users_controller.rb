class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		id = params[:id]
		@user = User.find(id)
	end

	def edit
		id = params[:id]
		@user = User.find(id)
	end

	def update
		id = params[:id]
		@user = User.find(id)
		if @user.update_attributes(params[:user])
			flash[:notice] = "Updates are successfull"
			redirect_to user_path @user
		end
	end

	def new
		@user = User.new
	end

	def create

	puts "params are:" + params.inspect

		@user = User.new(params[:user])
		if @user.save
			flash[:notice] = "New User Added"
			redirect_to user_path @user
		else
			flash[:notice] = "user not added"
			redirect_to new_user_path
		end
	end

	def destroy

		puts "params are:" + params.inspect

		u = User.find(params[:id])
		if u.delete
			flash[:notice] = "User Deleted"
		else
			flash[:notice] = "José No Way"
		end
		redirect_to users_path
	end

	def search
		puts "params are:" + params.inspect
	end

end
