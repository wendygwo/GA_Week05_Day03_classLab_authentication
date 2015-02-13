class UsersController < ApplicationController
	def index
		
	end

	def new
		@user=User.new
	end

	def create
		user = User.new(params.require(:user).permit(:email,:password))
		if user.save
			redirect_to new_session_path(user_created: 'true') #someone logs in here
		end
	end

	def show
		@user = User.find(session['user_id'])
		
	end

end
