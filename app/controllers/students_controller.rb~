class StudentsController < ApplicationController
	before_filter :authenticate 
	before_action :set_student, only: [:edit, :show, :update]
		layout 'view'
	def index
		redirect_to new_user_session_path unless current_user.present?
		@students = Student.all
	end

	def new
		@student = Student.new
	end

	def create
    @student = Student.new(student_params)

    if @student.save
      redirect_to @student      
    else
      render :new      
    end
  end

	def show
		@user = Student.find(params[:id])
	end

	def edit
	end

	def update
		if @student.update(student_params)		
			redirect_to students_path
		else
			render 'edit'
		end
	end

	def destroy
		@student = Student.find(params[:id])
		@student.delete
		redirect_to students_path
	end

	private
		def set_student
			@student = Student.find(params[:id])
		end

		def student_params						
			params.require("student").permit(:name,:email,:phone,:dob,:city,:country)
		end

		def authenticate
			redirect_to new_user_session_path unless current_user.present?
		end
end
