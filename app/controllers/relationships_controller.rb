class RelationshipsController < ApplicationController

 def create
    @relationship = Relationship.create(follower_id: params[:follower_id], followed_id: params[:followed_id])
 end
end
