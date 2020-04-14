class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @questions = params[:question]
    @answer = ''

    if params[:question] == "I'm going to work"
      @answer = 'Great!'
    elsif params[:question].end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
