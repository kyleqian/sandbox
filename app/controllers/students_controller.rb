class StudentsController < ApplicationController
	def index
	end

	def show
	end

	def submit
    student = Student.find(params[:id])
    render json: student, serializer: StudentsAskSerializer
	end
end
