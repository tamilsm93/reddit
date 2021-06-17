class MembershipsController < ApplicationController

  def create

    @membership = Membership.create(membership_params)
    redirect_to comments_path(id: params[:membership][:community_id])
  end

   def destroy
    @membership = Membership.find_by(user_id: current_user.id, community_id: params[:id])
    @membership.destroy
    redirect_to communities_path
  end

  private 

  def membership_params
    params.require(:membership).permit(:user_id, :community_id)
  end
end
