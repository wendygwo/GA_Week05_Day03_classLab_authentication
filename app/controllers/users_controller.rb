class UsersController < ApplicationController
	def index
		
	end
	
	def new
		@user=User.new
	end

	def create
		user = User.new(params.require(:user).permit(:email,:password))
		if user.save
			redirect_to new_session_path #someone logs in here
		end
	end
end
