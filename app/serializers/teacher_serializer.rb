class TeacherSerializer < ActiveModel::Serializer  
  belongs_to :school
  has_many :students

  attributes :id, :name, :subject

	class SchoolSerializer < ActiveModel::Serializer
		attributes :id, :name
	end

	class StudentSerializer < ActiveModel::Serializer
		attributes :id, :name
	end
end
