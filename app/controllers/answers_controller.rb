class AnswersController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(answer_params)
    # @answer = Answer.new(answer_params)
    # @answer.question = @question
    if @answer.save
      flash[:notice] = 'Answer added.'
      redirect_to question_path(@question)
    else
      render :new
    end
  end

  protected
  def answer_params
    params.require(:answer).permit(:description)
  end

end
