class UpvotesController < ApplicationController

    def index 
        @answer = Answer.find_by(id: params["id"])
        @upvotes = Upvote.all        
        @upvote = @answer.upvotes.new
    end

    def new
    end

    def create 
        count=+1
        
        @answer = Answer.find_by(id: params["upvote"]["answer_id"])
        @upvote = @answer.upvotes.create(upvote_params)

        redirect_to answers_path(id: @answer.id)
    
    end

    private 
    def upvote_params
        params.require(:upvote).permit(:count, :answer_id)
    end
end
