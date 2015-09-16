class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = 'Question added.'
      redirect_to '/'
    else
      render :new
    end
  end

  def index
    @question = Question.new
    @questions = Question.all.order("created_at desc")
  end

  def show
    @question = Question.find(params[:id])
    @new_answer = Answer.new
    @answers = Answer.where(question_id: @question.id).order("created_at desc")
    render :show
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])

    if @question.update(question_params)
      redirect_to @question, notice: "Question Successfully Updated!"
    else
      render :action => :edit
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    flash[:notice] = 'Question deleted.'
    redirect_to root_path
  end

  protected
  def question_params
    params.require(:question).permit(:title, :description)
  end

end
