class QuestionsController < ApplicationController
  def index
  	@questions = Question.all
  end

  def show
  	@question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.create(A: question_params[:A],B: question_params[:B],C: question_params[:C],statement: question_params[:statement],answer: question_params[:answer])
    redirect_to new_assigning_url(assignment_id: question_params[:assignment_id], question_id: @question.id)
    # redirect_to assignment_path(question_params[:assignment_id])
  end
    

  def edit
  end
  def destroy
    @question = Question.find(params[:id])
    @assignings = Assigning.where(question_id: @question.id)
    for assigning in @assignings
      assigning.destroy
    end
    @question.destroy
    redirect_to assignment_path(params[:assignment_id])
  end

  private

  def question_params
    params.require(:question).permit(:statement,:answer,:assignment_id,:A,:B,:C)
  end  
end
