class StudentsController < ApplicationController
	def index
		@students = Student.all
		render json: @students
	end

	def show
	end

	def ask
		render json: {'hello' => 'world!', 'id' => params[:id]}
	end
end
