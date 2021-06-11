class CommunitiesController < ApplicationController



    def index 
    if current_user.present?
        @communities = Community.all.reverse_order.limit(6)
        @community = current_user.communities.new
 

        @list_communities= Community.left_joins(:comments).group("communities.name").count
        @trends = @list_communities.sort_by{|k,v| v }.reverse.first(3).collect {|val| val[0]}
 
       @current_user_groups = current_user.communities
       @posts = Post.pluck(:community_id)
       @user_posts =  Community.where(id: @posts).includes(:comments).map {|com| com.comments}.flatten
    end
    end

    def new  
    end

    def create 
         roles = current_user.roles
         if roles.first.name == 'admin'
            @community = current_user.communities.create(community_params) 
          end
          redirect_to communities_path
    end

    


    private 
    def community_params 
        params.require(:community).permit(:name, :description).merge(user_id: current_user.id)
    end
end
