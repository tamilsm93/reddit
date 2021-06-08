class UserRolesController < ApplicationController

    def create 
        @user_role = UserRole.create(role_params)
    end

    private 
    def role_params 
        params.require(:user_role).permit(:user_id, :role_id)
    end
end
