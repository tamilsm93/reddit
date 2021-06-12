class SavepostsController < ApplicationController

	def index
		@save_posts = SavePost.all.reverse_order	
	end
 

	def create
	  comment  = Comment.find_by(id: params[:saveposts][:id])
	  @save_post = SavePost.create(title: comment.title,  description: comment.description) 
	  

	  
	end

end
