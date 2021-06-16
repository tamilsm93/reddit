class UsersController < ApplicationController

    def index
        
    end
    def edit
      @user = User.find_by(id: params[:id]) 
    end

    def update
      @user = User.find_by(id: params[:user][:id])
      @user.update(user_params)
      redirect_to communities_path
    end  

    private 
    def user_params
      params.require(:user).permit(:username, :firstname, :lastname, :dob) 
    end

   
end
