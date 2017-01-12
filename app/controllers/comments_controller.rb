class CommentsController < ApplicationController
	before_action :set_comment, only: [:destroy] 
	authorize_resource
	def new
		@comment=Comment.new
	end
	def create
		@comment=Comment.new(comment_params)
		@comment.user=current_user
		respond_to do |format|
			if @comment.save
				format.html {redirect_to article_path(@comment.article), notice: 'comment writen'}
			else
				format.html { redirect_to index_url , notice: 'comment not writen'}
			end
		end
	end
	def destroy
		@comment.destroy
		redirect_to index_url
	end
	private
	def comment_params
		params.require(:comment).permit(:content,:article_id)
	end
	def set_comment
		@comment=Comment.find(params[:id])
	end
end
