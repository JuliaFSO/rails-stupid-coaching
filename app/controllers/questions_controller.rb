class QuestionsController < ApplicationController

    def ask
      @question = params[:question]
    end

    def answer
      @question = params[:question]
      @answer = choose_answer(@question)
    end

    def choose_answer(question)
      if params[:question].include? '?' 
        'Silly question, get dressed and go to work!'
      elsif params[:question].include? 'I am going to work'
        'Great!'
      else 
        "I don't care, get dressed and go to work!"
      end
    end
end
