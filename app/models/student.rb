class Student < ApplicationRecord
  belongs_to :school
  has_many :student_teacher_pairs
  has_many :teachers, through: :student_teacher_pairs
  has_one :student_record

  def can_graduate?
    return student_record.credits >= School::CREDITS_FOR_GRADUATION
  end

  def teachers_who_teach_math
  	result = []
  	teachers.each do |t|
  		result.append(t) if t.subject == 'math'
  	end
  	return result
  end
end