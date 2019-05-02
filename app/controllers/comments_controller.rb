class CommentsController < ApplicationController


	def edit
		@comment = Comment.find(params[:id])
	end

end
