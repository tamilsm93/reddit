class MembersController < ApplicationController
    def index 
    end

    def new 
    end

    def create
       
        @user = current_user 
        @member = Member.create(member_params)         
    end


    private 
    def member_params 
        params.require(:member).permit(:user_id)
    end
end
