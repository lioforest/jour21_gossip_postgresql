class DetailController < ApplicationController
	def auteur
		@user = User.find(params[:id])
	end
end