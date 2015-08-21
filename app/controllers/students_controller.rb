class StudentsController < ApplicationController
		layout 'view'
	def index
		redirect_to new_user_session_path unless current_user.present?
		@users = Student.all
	end

	def show
		@user = Student.find(params[:id])
	end

	def destroy
		@student = Student.find(params[:id])
		@student.delete
		redirect_to students_path
	end
end
