class CommunitiesController < ApplicationController



    def index 
    if current_user.present?
        @communities = Community.all.limit(10)
        @community = current_user.communities.new
        @network = current_user.networks.new

        @list_communities= Community.left_joins(:comments).group("communities.name").count
        @trends = @list_communities.sort_by{|k,v| v }.reverse.first(3).collect {|val| val[0]}
       @users =  User.left_joins(:communities).group("users.email").count
       @top_commenters = @users.sort_by { |k,v| v }.reverse.collect {|val| val[0]} 
       @current_user_groups = current_user.communities
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
