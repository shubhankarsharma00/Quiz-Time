class AssignmentsController < ApplicationController
  def index
  	@assignments = Assignment.all
  end

  def show
    @assignings = Assigning.where(assignment_id: params[:id]).includes(:question,:assignment)
    @assignment = Assignment.find(params[:id])
  end

  def new
    @assignment = Assignment.new
  end

  def create
    @assignment = current_admin.assignments.create(assignment_params)
    redirect_to assignments_path
  end

  def edit
    @assignment = Assignment.find(params[:id])
  end
  def destroy
    @assignment = Assignment.find(params[:id])
    @assignment.destroy
    redirect_to assignments_path  
  end

  def update
    @assignment = Assignment.find(params[:id])
    @assignment.update(assignment_params)

    redirect_to assignment_path(@assignment)
  end
  private

  def assignment_params
    params.require(:assignment).permit(:topic)
  end

end
