class CommentsController < ApplicationController

    def index    
      
        @community = Community.find_by(id: params["id"])  
        @comments = @community.comments.all.order("created_at DESC")    
        @comment = @community.comments.new
        @member = Membership.find_by(user_id: current_user.id, community_id: params[:id])
                
        
    end

    def new
    end

    def create 
        
        @community =  Community.find_by(id: params["comment"]["community_id"])     
        # if Membership.find_by(user_id: current_user.id, community_id: params[:comment] [:community_id]).present?
        @comment = @community.comments.create(comment_params)
        redirect_to comments_path(id: @community)
        # end
     
    end


    private 
    def comment_params
        params.require(:comment).permit(:title, :description, :community_id).merge(user_id: current_user.id)
    end
end
