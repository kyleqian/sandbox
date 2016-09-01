class TeachersIndexSerializer < ActiveModel::Serializer  
  attributes :id, :name, :subject
  belongs_to :school
  has_many :students

  class SchoolSerializer < ActiveModel::Serializer
    attributes :id, :name
  end

  class StudentSerializer < ActiveModel::Serializer
    attributes :id, :name
  end
end
