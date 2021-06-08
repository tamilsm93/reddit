class RolesController < ApplicationController

    def create 
        @role = Role.create(role_params)
    end

    private 
    def role_params
        param.require(:role).permit(:name, :user_id)
    end
end
