class WelcomeController < ApplicationController
	def welcome_page

		@user = User.find(params[:id])


	end
	def bonjour_page

		@user = params[:id]
	end
end
