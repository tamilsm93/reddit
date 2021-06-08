class UsersController < ApplicationController

    def index
        
    end

    

    def update
      user_params
    end

    private 
    def user_params
        params.require(:user).permit(:member_id)
    end
end
