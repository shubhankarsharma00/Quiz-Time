class QuestionsController < ApplicationController
  def index
  	@questions = Question.all
  end

  def show
  	@question = Question.find(params[:id])
  end

  def new
    @question = Question.new(assignment_id: params[:assignment_id])
  end

  def create
    @question = Question.create(question_params)
    redirect_to assignment_path()
  end
    

  def edit
  end

  private

  def question_params
    params.require(:question).permit(:statement,:answer)
  end  
end
