class QuestionsController < ApplicationController
  def ask() end

  def answer
    @question = params[:question]

    @answer = if @question.match?('work')
                'Great!'
              elsif @question.match?('\?')
                'Silly question, get dressed and go to work!'
              else
                'I don\'t care, get dressed and go to work!'
              end
  end
end
