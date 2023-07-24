class AnswersController < ApplicationController

    def index 
        @comment = Comment.find_by(id: params[:id])
        @user = User.find_by(id: params["user_id"])       
        
        @answer = @comment.answers.new
        @answers = @comment.answers.all.order("created_at Desc")
    end

    def new
    end


    def create 
         
        
        @comment = Comment.find_by(id: params["answer"]["comment_id"])
        @answer = @comment.answers.create(answer_params)
         
        redirect_to answers_path({id: @comment, user_id: current_user})

    end

    private 

    def answer_params
        params.require(:answer).permit(:description, :tags, :comment_id).merge(user_id: current_user.id)
    end
end
