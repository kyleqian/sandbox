class StudentsController < ApplicationController
	def index
	end

	def show
	end

	def ask
    student = Student.find(params[:id])
    render json: student, serializer: StudentAskSerializer
	end
end
