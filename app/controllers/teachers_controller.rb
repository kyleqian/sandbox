class TeachersController < ApplicationController
  def show
    teacher = Teacher.find(params[:id])
    render json: TeachersShowSerializer.new(teacher)
  end

  def index
    json_data = {
      teachers: JSON.parse(ActiveModel::Serializer::CollectionSerializer.new(Teacher.all, serializer: TeachersIndexTeachersSerializer).to_json)
    }
    render json: json_data
  end
end
