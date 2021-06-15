class SavepostsController < ApplicationController

	def index
	  @save_posts = current_user.save_posts.all.pluck(:title, :description)		
	end
 

	def create
	  comment    = Comment.find_by(id: params[:saveposts][:id])
	  @save_post = current_user.save_posts.create(title: comment.title,  description: comment.description)   
	end

end
