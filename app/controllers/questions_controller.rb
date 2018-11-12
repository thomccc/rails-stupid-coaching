class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:message]
    if @question.downcase == "i am going to work right now!"
      @answers = 'great'
    elsif @question.end_with?('?')
      @answers = "Silly question, get dressed and go to work!"
    else
      @answers = "I don't care, get dressed and go to work!"
    end
  end

end
