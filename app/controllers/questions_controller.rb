class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @answer = ''
    if params[:search].upcase == 'I am going to work'.upcase
      @answer = 'Great!'
    elsif params[:search].include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
