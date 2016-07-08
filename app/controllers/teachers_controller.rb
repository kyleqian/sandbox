class TeachersController < ApplicationController
  def show
    teacher = Teacher.find(params[:id])
    render json: teacher, serializer: TeacherShowSerializer
  end

  def index
    teachers = Teacher.all
    render json: teachers, each_serializer: TeacherIndexSerializer
  end
end
