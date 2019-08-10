class AdminsController < ApplicationController
    def show
    	@assignments = Assignment.where(author_id: current_admin.id)
    end
end