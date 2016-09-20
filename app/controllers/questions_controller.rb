class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    @answer = Answer.new
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = 'Question Created'
      respond_to do |format|
        format.html { redirect_to questions_path }
        format.js
      end
    else
      render :new
    end
  end

private
  def question_params
    params.require(:question).permit(:prompt, :option1, :option2)
  end
end
