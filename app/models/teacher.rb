class Teacher < ApplicationRecord
	belongs_to :school
	has_many :student_teacher_pairs
end
