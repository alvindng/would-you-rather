class AnswersController < ApplicationController
  def new
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(answer_params)
    if answer_params[:selection] === @question.option1
      opt1count= @question.option1_count+1
      @answer.save
      @question.update(option1_count: opt1count)
      flash[:notice] = 'Answer Created'
      respond_to do |format|
        format.html { redirect_to questions_path }
        format.js
      end
    elsif answer_params[:selection] === @question.option2
      opt2count= @question.option2_count+1
      @answer.save
      @question.update(option2_count: opt2count)
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
