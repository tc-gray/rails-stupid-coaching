class QuestionsController < ApplicationController
  def ask
    # empty
  end

  def coach_answer(your_message)
    if your_message[-1] == '?'
      'Silly question, get dressed and go to work!'
    elsif your_message == 'I am going to work right now!'
      'Great!'
    else
      'I don\'t care, get dressed and go to work!'
    end
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end
end
