class AnswersController < ApplicationController
    
    def create
        @answer = Answer.new(params[:answer])
        
        @answer.save
        redirect_to @answer
    end
    
end
