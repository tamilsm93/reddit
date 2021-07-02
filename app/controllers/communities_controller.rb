class CommunitiesController < ApplicationController

    def index 
 
       @communities = Community.selectItem
       @community = current_user.communities.new

       @trends = User.joins(communities: :comments).group("communities.name")
                    .count
                    .sort_by { |k,v| v }
                    .reverse.first(3).to_h
       
       @top_comments= User.joins(communities: [comments: :answers])
                           .group("users.email")
                           .count
                           .sort_by {|k,v| v}
                           .reverse.first(3).to_h     
       posts = Post.pluck(:community_id)
       @user_posts =  current_user.communities.user_comments(posts)
   
    end

    def new  
    end

    def create 
         roles = current_user.roles
         if roles.first.name == 'admin'
            @community = current_user.communities.create(community_params) 
            redirect_to communities_path
         else
            render 'check'
          end
         
    end

  

    def submit
        @community = current_user.communities.new 
    end 
    def community_params 
        params.require(:community).permit(:name, :description).merge(user_id: current_user.id)
    end
end
