class ScorecardsController < ApplicationController
	def new
		@scorecards = Scorecard.where(assignment_id: params[:id], student_id: current_student.id)
		@assignings = Assigning.where(assignment_id: params[:id])
		@scorecards.each do |scorecard|
			scorecard.destroy
		end
		marks = 0 
		@assignings.each do |assigning|
			@question = Question.find(assigning.question_id)
			puts @question.answer
			puts params[assigning.id.to_s]
			if @question.answer == params[assigning.id.to_s] 
				marks = marks + 1
			end
		end
		puts marks
		@scorecard = Scorecard.create(student_id: current_student.id,assignment_id: params[:id],marks: marks)
		redirect_to student_path(current_student)
	end
end
