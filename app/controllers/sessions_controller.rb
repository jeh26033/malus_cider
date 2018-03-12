class SessionsController < ApplicationController
	def createa
		session[:current_user_id]=@user.id
		
	end
end
