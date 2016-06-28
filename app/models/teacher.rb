class Teacher < ApplicationRecord
	belongs_to :school
	has_many :student_teacher_pairs
	has_many :students, through: :student_teacher_pairs
end
