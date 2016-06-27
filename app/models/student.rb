class Student < ApplicationRecord
	belongs_to :school
	has_many :student_teacher_pairs
	has_one :student_record
end
