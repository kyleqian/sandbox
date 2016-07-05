class TeachersController < ApplicationController
	def index
		teachers = Teacher.all
		render json: teachers, each_serializer: TeachersIndexSerializer
	end
end
