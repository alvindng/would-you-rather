class AnswersController < ApplicationController
  def new
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(answer_params)
    if @answer.save
      flash[:notice] = 'Answer Created'
      respond_to do |format|
        format.html { redirect_to questions_path }
        format.js
      end
    else
      render :new
    end
  end

private
  def answer_params
    params.require(:answer).permit(:selection)
  end
end
