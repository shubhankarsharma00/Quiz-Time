class AssigningsController < ApplicationController
  def new
    @assigning = Assigning.create(:assignment_id => params[:assignment_id], :question_id => params[:question_id]  )
    puts @assigning.assignment_id,@assigning.question_id
    redirect_to assignment_path(id: params[:assignment_id])  
  end
  def destroy
    @assignings = Assigning.find(params[:id])
    @assignings.destroy
    redirect_to assignment_path(id: params[:assignment_id])  
  end
end
