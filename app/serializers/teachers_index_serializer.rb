class TeachersIndexSerializer < ActiveModel::Serializer  
  attributes :id, :name, :subject
  belongs_to :school
  has_many :students

  class SchoolsSerializer < ActiveModel::Serializer
    attributes :id, :name
  end

  class StudentsSerializer < ActiveModel::Serializer
    attributes :id, :name
  end
end
