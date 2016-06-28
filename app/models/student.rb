class Student < ApplicationRecord
  belongs_to :school
  has_many :student_teacher_pairs
  has_one :student_record

  def can_graduate
    return self.tudent_record.credits >= School::CREDITS_FOR_GRADUATION
  end
end